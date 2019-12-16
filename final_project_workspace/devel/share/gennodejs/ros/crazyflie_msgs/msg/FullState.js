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

class FullState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.x_dot = null;
      this.y_dot = null;
      this.z_dot = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.roll_dot = null;
      this.pitch_dot = null;
      this.yaw_dot = null;
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
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('roll_dot')) {
        this.roll_dot = initObj.roll_dot
      }
      else {
        this.roll_dot = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_dot')) {
        this.pitch_dot = initObj.pitch_dot
      }
      else {
        this.pitch_dot = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_dot')) {
        this.yaw_dot = initObj.yaw_dot
      }
      else {
        this.yaw_dot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FullState
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
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [roll_dot]
    bufferOffset = _serializer.float64(obj.roll_dot, buffer, bufferOffset);
    // Serialize message field [pitch_dot]
    bufferOffset = _serializer.float64(obj.pitch_dot, buffer, bufferOffset);
    // Serialize message field [yaw_dot]
    bufferOffset = _serializer.float64(obj.yaw_dot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FullState
    let len;
    let data = new FullState(null);
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
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_dot]
    data.roll_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_dot]
    data.pitch_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_dot]
    data.yaw_dot = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'crazyflie_msgs/FullState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1478f01b4f726b5b1e488813cdcd71d7';
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
    float64 roll
    float64 pitch
    float64 yaw
    float64 roll_dot
    float64 pitch_dot
    float64 yaw_dot
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FullState(null);
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

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.roll_dot !== undefined) {
      resolved.roll_dot = msg.roll_dot;
    }
    else {
      resolved.roll_dot = 0.0
    }

    if (msg.pitch_dot !== undefined) {
      resolved.pitch_dot = msg.pitch_dot;
    }
    else {
      resolved.pitch_dot = 0.0
    }

    if (msg.yaw_dot !== undefined) {
      resolved.yaw_dot = msg.yaw_dot;
    }
    else {
      resolved.yaw_dot = 0.0
    }

    return resolved;
    }
};

module.exports = FullState;
