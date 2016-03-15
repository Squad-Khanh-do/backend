'use strict';

const mongoose = require('mongoose');


const surveyResponsesSchema = new mongoose.Schema({
  response: {
    type: String,
    required: true,
  },
  _survey:{
    type: mongoose.Schema.Types.ObjectId,
    ref: 'Survey',
    required: true,
  }
}, {
  timestamps: true,
  toJSON: { virtuals: true },
});

const SurveyResponses = mongoose.model('SurveyResponses', surveyResponsesSchema);

module.exports = SurveyResponses;
