import sys
import json
from kapacitor.udf.agent import Agent, Handler, Server
from kapacitor.udf import udf_pb2
import signal
import requests
import json

ML_SERVICE_ENDPOINT = "http://creditfraudmodel:5000"

import logging
logging.basicConfig(level=logging.DEBUG, format='%(asctime)s %(levelname)s:%(name)s: %(message)s')
logger = logging.getLogger()


class FraudDetection(Handler):
    def __init__(self, agent):
        self._agent = agent

    def info(self):
        response = udf_pb2.Response()
        response.info.wants = udf_pb2.STREAM
        response.info.provides = udf_pb2.STREAM
        response.info.options['field'].valueTypes.append(udf_pb2.DOUBLE)
        return response

    def init(self, init_req):
        response = udf_pb2.Response()
        response.init.success = True
        return response

    def snapshot(self):
        response = udf_pb2.Response()
        response.snapshot.snapshot = bytes()
        return response

    def restore(self, restore_req):
        response = udf_pb2.Response()
        response.restore.success = False
        response.restore.error = 'not implemented'
        return response

    def begin_batch(self, begin_req):
        raise Exception("not supported")


    def call_classifier_rest(self,point):
        feature_cols = [ 'v1','v2','v3','v4','v5','v6','v7','v8','v9','v10',
                         'v11','v12','v13','v14','v15','v16','v17','v18','v19',
                         'v20','v21','v22','v23','v24','v25','v26','v27','v28','amount' ]
        feature_values = []
        for feature in feature_cols:                
            feature_values.append(point.fieldsDouble[feature])
        data = {
            "features": feature_values
        } 
        json_data = json.dumps(data)
        response = requests.post(ML_SERVICE_ENDPOINT+"/predict", json=json_data)
        logger.info(response.json())
        return response.json()['prediction_result'] > 0.5

    def point(self, point):

        logger.info(point)
        #logger.info("Point!")
        #print(point)
        
        #point_value = point.fieldsDouble["value"]
        #print("Point value: ", point_value)

        response = udf_pb2.Response()        
        response.point.name = point.name
        response.point.time = point.time
        response.point.group = point.group
        response.point.tags.update(point.tags)
        
        # Campos agregados        
        fraud = self.call_classifier_rest(point)
        response.point.fieldsBool['fraud'] = fraud
        #response.point.fieldsString['udf_info'] = 'I Was processed as an UDF'
        self._agent.write_response(response, True)

    def end_batch(self, end_req):
        raise Exception("not supported")

class accepter(object):
    _count = 0
    def accept(self, conn, addr):
        self._count += 1
        a = Agent(conn, conn)
        h = FraudDetection(a)
        a.handler = h

        logger.info("Starting Agent for connection %d", self._count)
        a.start()
        a.wait()
        logger.info("Agent finished connection %d",self._count)

if __name__ == '__main__':
    path = "/tmp/comm/udf_ml_model.sock"
    if len(sys.argv) == 2:
        path = sys.argv[1]
    server = Server(path, accepter())
    logger.info("Started server. Listening at: "+ path)
    server.serve()
