import falcon
from links import LinkController

app = falcon.API()

app.add_route('/links/{link}', LinkController())
