#!/usr/bin/env python

from __future__ import print_function

import glob
import os
import yaml

from jinja2 import Environment, FileSystemLoader


def main():
    with open('../kolla/ansible/group_vars/all.yml') as vardata:
        vars = yaml.load(vardata)

    env = Environment(loader=FileSystemLoader('.'))
    for file in glob.glob('services/*.j2'):
        template = env.get_template(file)
        rendered = template.render(vars)
        new_file = os.path.splitext(file)[0]
        with open(new_file, 'w') as f:
            print('Converting {} -> {}'.format(file, new_file))
            f.write(rendered)

if __name__ == '__main__':
    main()
