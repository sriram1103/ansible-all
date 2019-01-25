- name: Print some debug information 
  debug: 
    msg: |
        Module Variables ("vars"):
        --------------------------------
        {{ vars | to_nice_json }} 
 
        Environment Variables ("environment"):
        --------------------------------
        {{ environment | to_nice_json }} 
 
        GROUP NAMES Variables ("group_names"):
        --------------------------------
        {{ group_names | to_nice_json }}
 
        GROUPS Variables ("groups"):
        --------------------------------
        {{ groups | to_nice_json }}
 
        HOST Variables ("hostvars"):
        --------------------------------
        {{ hostvars | to_nice_json }} 


msg: Module Variables ("vars"):
--------------------------------
{
    "ansible_check_mode": false, 
    "ansible_password": "root000", 
    "ansible_play_batch": [
        "10.111.9.226"
    ], 
    "ansible_play_hosts": [
        "10.111.9.226"
    ], 
    "ansible_play_hosts_all": [
        "10.111.9.226"
    ], 
    "ansible_playbook_python": "/usr/bin/python", 
    "ansible_user": "root", 
    "ansible_version": {
        "full": "2.4.1.0", 
        "major": 2, 
        "minor": 4, 
        "revision": 1, 
        "string": "2.4.1.0"
    }, 
    "environment": [], 
    "group_names": [
        "spare"
    ], 
    "groups": {
        "all": [
            "10.111.9.226"
        ], 
        "spare": [
            "10.111.9.226"
        ], 
        "ungrouped": []
    }, 
    "hostvars": {
        "10.111.9.226": {
            "ansible_check_mode": false, 
            "ansible_password": "root000", 
            "ansible_playbook_python": "/usr/bin/python", 
            "ansible_user": "root", 
            "ansible_version": {
                "full": "2.4.1.0", 
                "major": 2, 
                "minor": 4, 
                "revision": 1, 
                "string": "2.4.1.0"
            }, 
            "group_names": [
                "spare"
            ], 
            "groups": {
                "all": [
                    "10.111.9.226"
                ], 
                "spare": [
                    "10.111.9.226"
                ], 
                "ungrouped": []
            }, 
            "inventory_dir": "/ansible/tmp", 
            "inventory_file": "/ansible/tmp/hosts", 
            "inventory_hostname": "10.111.9.226", 
            "inventory_hostname_short": "10", 
            "omit": "__omit_place_holder__bfe93e9bfc9021fb36618a73e426a766f09c5d3e", 
            "playbook_dir": "/ansible/tmp"
        }
    }, 
    "inventory_dir": "/ansible/tmp", 
    "inventory_file": "/ansible/tmp/hosts", 
    "inventory_hostname": "10.111.9.226", 
    "inventory_hostname_short": "10", 
    "omit": "__omit_place_holder__bfe93e9bfc9021fb36618a73e426a766f09c5d3e", 
    "play_hosts": [
        "10.111.9.226"
    ], 
    "playbook_dir": "/ansible/tmp", 
    "role_names": []
} 

Environment Variables ("environment"):
--------------------------------
[] 

GROUP NAMES Variables ("group_names"):
--------------------------------
[
    "spare"
]

GROUPS Variables ("groups"):
--------------------------------
{
    "all": [
        "10.111.9.226"
    ], 
    "spare": [
        "10.111.9.226"
    ], 
    "ungrouped": []
}

HOST Variables ("hostvars"):
--------------------------------
{
    "10.111.9.226": {
        "ansible_check_mode": false, 
        "ansible_password": "root000", 
        "ansible_playbook_python": "/usr/bin/python", 
        "ansible_user": "root", 
        "ansible_version": {
            "full": "2.4.1.0", 
            "major": 2, 
            "minor": 4, 
            "revision": 1, 
            "string": "2.4.1.0"
        }, 
        "group_names": [
            "spare"
        ], 
        "groups": {
            "all": [
                "10.111.9.226"
            ], 
            "spare": [
                "10.111.9.226"
            ], 
            "ungrouped": []
        }, 
        "inventory_dir": "/ansible/tmp", 
        "inventory_file": "/ansible/tmp/hosts", 
        "inventory_hostname": "10.111.9.226", 
        "inventory_hostname_short": "10", 
        "omit": "__omit_place_holder__bfe93e9bfc9021fb36618a73e426a766f09c5d3e", 
        "playbook_dir": "/ansible/tmp"
    }
} 
