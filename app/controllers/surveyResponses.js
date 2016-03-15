'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const SurveyResponse = models.surveyResponse;

const index = (req, res, next) => {
  // KN- updated the paramater
  let search = { _survey: req.params.id};
  SurveyResponse.find(search)
    .then(surveyResponses => res.json({ surveyResponses }))
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



module.exports = controller({
  index,
  create,
});
