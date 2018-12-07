#!/usr/bin/python

import sys
import os
import json
import argparse

dir = os.path.dirname(os.path.abspath(sys.argv[0]))
hostFile = dir + "/hosts.json"

def readFile():
    with open(hostFile,"r") as fp:
        return  json.load(fp)

def resolveGroups(hostData):
    groups = {}
    all = []
    for grp in hostData["groups"]:
        all.append(grp)
        d = hostData["groups"][grp]
        if "hosts" in d:
            groups[grp] ={"hosts":d["hosts"]} 
        if "groups" in d:
            d = d["groups"]
            if grp in groups:
                groups[grp]["children"].append(d)
            else:
                groups[grp] = {"children":d}
    groups["all"] = {"children":all}
    return groups

def resolveHostVars(hostData):
    var = {}
    for host in hostData["hosts"]:
        var[host] = hostData["hosts"][host]
    return {"_meta": {"hostvars":var}}

def getData():
    hostData = readFile()
    grpData = resolveGroups(hostData)
    varData = resolveHostVars(hostData)
    varData.update(grpData)
    return varData

def parse():
    ap = argparse.ArgumentParser(description="Dynamic inventory")
    group = ap.add_mutually_exclusive_group(required=True)
    group.add_argument('-l','--list',action='store_true')
    group.add_argument('--host',nargs=1,action='store',dest='host')
    return ap.parse_args()

def main():
    data = getData()
    #ar = parse()
    #if ar.list:
    print json.dumps(data, sort_keys=True, indent=2)
    #print json.dumps(data["_meta"]["hostvars"][ar.host[0]], sort_keys=True, indent=2)

if __name__ == "__main__":
    main()