#!/usr/bin/python

from ansible.module_utils.basic import *

def main():
    module = AnsibleModule(
        argument_spec = dict(
            path   = dict(default='/etc/hosts'),
            lst   = dict(),
            stat   = dict()
        )
    )
    params = module.params
    
    path = params['path']
    lst = params['lst']
    stat = params['stat']
    print path,lst,stat

    module.exit_json(changed=True)


if __name__ == "__main__":
    main()