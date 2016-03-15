'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const SurveyResponse = models.surveyResponse;

const authenticate = require('./concerns/authenticate');
const multer = require('./concerns/multer.js');

const index = (req, res, next) => {
  // KN- updated the paramater
  let search = { _survey: req.params.id};
  SurveyResponse.find(search)
    .then(surveyResponses => res.json({ surveyResponses }))
    .catch(err => next(err));
};

const show = (req, res, next) => {
  SurveyResponse.findById(req.params.id)
    .then(surveyResponse => surveyResponse ? res.json({ surveyResponse }) : next())
    .catch(err => next(err));
};

const create = (req, res, next) => {
  let surveyResponse = Object.assign(req.body.surveyResponse, {
    _survey: req.params.id
    // _owner: req.currentUser._id,
  });
  SurveyResponse.create(surveyResponse)
    .then(surveyResponse => res.json({ surveyResponse }))
    .catch(err => next(err));
};


const update = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  SurveyResponse.findOne(search)
    .then(surveyResponse => {
      if (!surveyResponse) {
        return next();
      }

      delete req.body._owner;  // disallow owner reassignment.
      return surveyResponse.update(req.body.surveyResponse)
        .then(() => res.sendStatus(200));
    })
    .catch(err => next(err));
};


const destroy = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  SurveyResponse.findOne(search)
    .then(surveyResponse => {
      if (!surveyResponse) {
        return next();
      }

      return surveyResponse.remove()
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
  { method: authenticate, except: ['index', 'show', 'create'] },
  { method: multer.single(), except: ['index', 'show', 'destroy', 'create'], },
], });
