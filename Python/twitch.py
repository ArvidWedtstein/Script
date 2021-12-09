#!/usr/bin/env python3

# checks whether a twitch.tv userstream is live

import argparse
from urllib.request import urlopen
from urllib.error import URLError
import json

def parse_args():
    """ parses commandline, returns args namespace object """
    desc = ('Check online status of twitch.tv user.\n'
            'Exit prints are 0: online, 1: offline, 2: not found, 3: error.')
    parser = argparse.ArgumentParser(description = desc,
             formatter_class = argparse.RawTextHelpFormatter)
    parser.add_argument('USER', nargs = 1, help = 'twitch.tv username')
    args = parser.parse_args()
    return args

def check_user(user):
    """ returns 0: online, 1: offline, 2: not found, 3: error """
    url = 'https://api.twitch.tv/kraken/streams/' + user
    try:
        info = json.loads(urlopen(url, timeout = 15).read().decode('utf-8'))
        if info['stream'] == None:
            status = 1
        else:
            status = 0
    except URLError as e:
        if e.reason == 'Not Found' or e.reason == 'Unprocessable Entity':
            status = 2
        else:
            status = 3
    return status

# main
try:
    user = parse_args().USER[0]
    print(check_user(user))
except KeyboardInterrupt:
    pass
