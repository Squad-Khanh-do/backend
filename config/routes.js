'use strict';

const routes = require('lib/wiring/routes');

routes.root('root#root');
routes.resources('examples');

routes.post('/sign-up', 'users#signup');
routes.post('/sign-in', 'users#signin');
routes.delete('/sign-out/:id', 'users#signout');
routes.patch('/change-password/:id', 'users#changepw');
routes.resources('users', { only: ['index', 'show'] });
routes.resources('surveys', { only: ['index', 'show', 'create','update','destroy'] });
routes.resources('answers', { only: ['index', 'show'] });
routes.post('/answers/:id', 'answers#create');

module.exports = routes;
