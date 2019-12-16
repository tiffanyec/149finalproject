// Auto-generated. Do not edit!

// (in-package crazyflie_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PositionVelocityYawState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.x_dot = null;
      this.y_dot = null;
      this.z_dot = null;
      this.yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('x_dot')) {
        this.x_dot = initObj.x_dot
      }
      else {
        this.x_dot = 0.0;
      }
      if (initObj.hasOwnProperty('y_dot')) {
        this.y_dot = initObj.y_dot
      }
      else {
        this.y_dot = 0.0;
      }
      if (initObj.hasOwnProperty('z_dot')) {
        this.z_dot = initObj.z_dot
      }
      else {
        this.z_dot = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionVelocityYawState
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [x_dot]
    bufferOffset = _serializer.float64(obj.x_dot, buffer, bufferOffset);
    // Serialize message field [y_dot]
    bufferOffset = _serializer.float64(obj.y_dot, buffer, bufferOffset);
    // Serialize message field [z_dot]
    bufferOffset = _serializer.float64(obj.z_dot, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionVelocityYawState
    let len;
    let data = new PositionVelocityYawState(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_dot]
    data.x_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_dot]
    data.y_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_dot]
    data.z_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'crazyflie_msgs/PositionVelocityYawState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9aa644cdeaad9584fb826b2ed94d4e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 z
    float64 x_dot
    float64 y_dot
    float64 z_dot
    float64 yaw
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionVelocityYawState(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.x_dot !== undefined) {
      resolved.x_dot = msg.x_dot;
    }
    else {
      resolved.x_dot = 0.0
    }

    if (msg.y_dot !== undefined) {
      resolved.y_dot = msg.y_dot;
    }
    else {
      resolved.y_dot = 0.0
    }

    if (msg.z_dot !== undefined) {
      resolved.z_dot = msg.z_dot;
    }
    else {
      resolved.z_dot = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    return resolved;
    }
};

module.exports = PositionVelocityYawState;
