'use strict';

const mongoose = require('mongoose');

const surveySchema = new mongoose.Schema({
  title: {
    type: String,
    required: true,
  },
  Question: {
    type: String,
    required: true
  },
  Answer: {
    type: String,
    required: true
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

// surveySchema.virtual('length').get(function length() {
//   return this.text.length;
// });

const Survey = mongoose.model('Survey', surveySchema);

module.exports = Survey;
