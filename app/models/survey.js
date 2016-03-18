'use strict';

const mongoose = require('mongoose');

const surveySchema = new mongoose.Schema({
  title: {
    type: String,
    required: true,
  },
  description: {
    type: String,
  },
  questions: [{
    text: {
      type: String,
      required: false
    },
    choice: {
      questone: {
        type: String,
        required: false
      },
      questtwo: {
        type: String,
        required: false
      },
      questthree: {
        type: String,
        required: false
      },
      questfour: {
        type: String,
        required: false
      },
      questfive:{
        type: String,
        required: false
      }
    }
  }],
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
}, {
  timestamps: true,
  toJSON: { virtuals: true },
});

const Survey = mongoose.model('Survey', surveySchema);

module.exports = Survey;
