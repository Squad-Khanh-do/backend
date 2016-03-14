'use strict';

const mongoose = require('mongoose');

const answersSchema = new mongoose.Schema({
  response: {
    type: Number,
    required: true,
  },
  _survery:{
    type: String,
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

const Answers = mongoose.model('Answers', answersSchema);

module.exports = Answers;
