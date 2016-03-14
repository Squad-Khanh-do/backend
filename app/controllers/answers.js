'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Answers = models.answers;

const authenticate = require('./concerns/authenticate');

const index = (req, res, next) => {
  Answers.find()
    .then(answers => res.json({ answers }))
    .catch(err => next(err));
};

const show = (req, res, next) => {
  Answers.findById(req.params.id)
    .then(answer => answer ? res.json({ answer }) : next())
    .catch(err => next(err));
};

const create = (req, res, next) => {
  let answer = Object.assign(req.body.answer, {
    _owner: req.currentUser._id,
    _survery:req.params.id
  });
  Answers.create(answer)
    .then(answer => res.json({ answer }))
    .catch(err => next(err));
};

const update = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Answers.findOne(search)
    .then(answer => {
      if (!answer) {
        return next();
      }

      delete req.body._owner;  // disallow owner reassignment.
      return answer.update(req.body.answer)
        .then(() => res.sendStatus(200));
    })
    .catch(err => next(err));
};


const destroy = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Answers.findOne(search)
    .then(answer => {
      if (!answer) {
        return next();
      }

      return answer.remove()
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
