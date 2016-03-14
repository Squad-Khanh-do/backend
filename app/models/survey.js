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
  questions: {
    text: {
      type: String,
      required: false
    }
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
