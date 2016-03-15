'use strict';

const mongoose = require('mongoose');

const surveyResponsesSchema = new mongoose.Schema({
  response: {
    type: String,
    required: true,
  },
  _survery:{
    type: mongoose.Schema.Types.ObjectId,
    ref: 'Survey',
        required: true,
    // Figure how to use a mongoose ObjectId
    //type: mongoose.Schema.Types.ObjectId,
    // ref: 'User',
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
}, {
  timestamps: true,
  toJSON: { virtuals: true },
});

const SurveyResponses = mongoose.model('SurveyResponses', surveyResponsesSchema);

module.exports = SurveyResponses;
