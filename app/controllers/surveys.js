'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Survey = models.survey;

const authenticate = require('./concerns/authenticate');

const index = (req, res, next) => {
  Survey.find()
    .then(surveys => res.json({ surveys }))
    .catch(err => next(err));
};

const show = (req, res, next) => {
  Survey.findById(req.params.id)
    .then(survey => survey ? res.json({ survey }) : next())
    .catch(err => next(err));
};

const create = (req, res, next) => {
  let survey = Object.assign(req.body.survey, {
    _owner: req.currentUser._id,
  });
  Survey.create(survey)
    .then(survey => res.json({ survey }))
    .catch(err => next(err));
};

const update = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Survey.findOne(search)
    .then(example => {
      if (!example) {
        return next();
      }

      delete req.body._owner;  // disallow owner reassignment.
      return Survey.update(req.body.survey)
        .then(() => res.sendStatus(200));
    })
    .catch(err => next(err));
};

const destroy = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Survey.findOne(search)
    .then(survey => {
      if (!survey) {
        return next();
      }

      return Survey.remove()
        .then(() => res.sendStatus(200));
    })
    .catch(err => next(err));
};

module.exports = controller({
  index,
  show,
  create,
  update,
  destroy,
}, { before: [
  { method: authenticate, except: ['index', 'show'], }
], });
