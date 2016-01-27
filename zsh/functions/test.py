#!/usr/bin/env python

my_var = {
  'name': 'Robin',
  'age': 28
}

import simplejson as simplejson; print 'my_var: {json}'.format(json=simplejson.dumps(my_var, indent=4))
