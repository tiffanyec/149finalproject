// Auto-generated. Do not edit!

// (in-package crazyflie_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Control = require('./Control.js');

//-----------------------------------------------------------

class PrioritizedControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control = null;
      this.priority = null;
    }
    else {
      if (initObj.hasOwnProperty('control')) {
        this.control = initObj.control
      }
      else {
        this.control = new Control();
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrioritizedControl
    // Serialize message field [control]
    bufferOffset = Control.serialize(obj.control, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.float64(obj.priority, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrioritizedControl
    let len;
    let data = new PrioritizedControl(null);
    // Deserialize message field [control]
    data.control = Control.deserialize(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'crazyflie_msgs/PrioritizedControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6383d540d010819be07756f19814ef1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Control control
    float64 priority
    ================================================================================
    MSG: crazyflie_msgs/Control
    float64 roll
    float64 pitch
    float64 yaw_dot
    float64 thrust
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrioritizedControl(null);
    if (msg.control !== undefined) {
      resolved.control = Control.Resolve(msg.control)
    }
    else {
      resolved.control = new Control()
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0.0
    }

    return resolved;
    }
};

module.exports = PrioritizedControl;
