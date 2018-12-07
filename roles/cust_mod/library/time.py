#!/usr/bin/python

import datetime
import json

print json.dumps({"time":str(datetime.datetime.now())})