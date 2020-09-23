// Auto-generated. Do not edit!

// (in-package leap_motion.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Gesture {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lmc_gesture_id = null;
      this.is_valid = null;
      this.duration_us = null;
      this.duration_s = null;
      this.gesture_state = null;
      this.gesture_type = null;
      this.to_string = null;
      this.pointable_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('lmc_gesture_id')) {
        this.lmc_gesture_id = initObj.lmc_gesture_id
      }
      else {
        this.lmc_gesture_id = 0;
      }
      if (initObj.hasOwnProperty('is_valid')) {
        this.is_valid = initObj.is_valid
      }
      else {
        this.is_valid = false;
      }
      if (initObj.hasOwnProperty('duration_us')) {
        this.duration_us = initObj.duration_us
      }
      else {
        this.duration_us = 0;
      }
      if (initObj.hasOwnProperty('duration_s')) {
        this.duration_s = initObj.duration_s
      }
      else {
        this.duration_s = 0.0;
      }
      if (initObj.hasOwnProperty('gesture_state')) {
        this.gesture_state = initObj.gesture_state
      }
      else {
        this.gesture_state = 0;
      }
      if (initObj.hasOwnProperty('gesture_type')) {
        this.gesture_type = initObj.gesture_type
      }
      else {
        this.gesture_type = 0;
      }
      if (initObj.hasOwnProperty('to_string')) {
        this.to_string = initObj.to_string
      }
      else {
        this.to_string = '';
      }
      if (initObj.hasOwnProperty('pointable_ids')) {
        this.pointable_ids = initObj.pointable_ids
      }
      else {
        this.pointable_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gesture
    // Serialize message field [lmc_gesture_id]
    bufferOffset = _serializer.int32(obj.lmc_gesture_id, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    // Serialize message field [duration_us]
    bufferOffset = _serializer.int64(obj.duration_us, buffer, bufferOffset);
    // Serialize message field [duration_s]
    bufferOffset = _serializer.float32(obj.duration_s, buffer, bufferOffset);
    // Serialize message field [gesture_state]
    bufferOffset = _serializer.int32(obj.gesture_state, buffer, bufferOffset);
    // Serialize message field [gesture_type]
    bufferOffset = _serializer.int32(obj.gesture_type, buffer, bufferOffset);
    // Serialize message field [to_string]
    bufferOffset = _serializer.string(obj.to_string, buffer, bufferOffset);
    // Serialize message field [pointable_ids]
    bufferOffset = _arraySerializer.int32(obj.pointable_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gesture
    let len;
    let data = new Gesture(null);
    // Deserialize message field [lmc_gesture_id]
    data.lmc_gesture_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [duration_us]
    data.duration_us = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [duration_s]
    data.duration_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gesture_state]
    data.gesture_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gesture_type]
    data.gesture_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [to_string]
    data.to_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pointable_ids]
    data.pointable_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.to_string.length;
    length += 4 * object.pointable_ids.length;
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leap_motion/Gesture';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3bf4fe2d0e707244a5a679250ea8eba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A unique id given to this gesture
    int32 lmc_gesture_id
    
    # Reports whether this Gesture instance represents a valid Gesture. 
    bool is_valid
    
    # The elapsed duration of the recognized movement up to the frame containing this 
    # Gesture object, in microseconds. 
    int64 duration_us
    
    # The elapsed duration in seconds.
    float32 duration_s
    
    # Recognized movements occur over time and have a beginning, a middle, and an end. 
    # The 'state' attribute reports where in that sequence this Gesture object falls.
    int32 gesture_state
    ### STATE_INVALID == -1
    ### STATE_START == 1
    ### STATE_UPDATE == 2
    ### STATE_STOP == 3
    
    # The supported types of gestures. 
    int32 gesture_type
    ### TYPE_INVALID == -1
    ### TYPE_SWIPE == 1
    ### TYPE_CIRCLE == 4
    ### TYPE_SCREEN_TAP == 5
    ### TYPE_KEY_TAP == 6
    
    # A string containing a brief, human-readable description of this Gesture. 
    string to_string
    
    # The list of fingers, tools ids associated with this Gesture, if any. 
    int32[] pointable_ids
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gesture(null);
    if (msg.lmc_gesture_id !== undefined) {
      resolved.lmc_gesture_id = msg.lmc_gesture_id;
    }
    else {
      resolved.lmc_gesture_id = 0
    }

    if (msg.is_valid !== undefined) {
      resolved.is_valid = msg.is_valid;
    }
    else {
      resolved.is_valid = false
    }

    if (msg.duration_us !== undefined) {
      resolved.duration_us = msg.duration_us;
    }
    else {
      resolved.duration_us = 0
    }

    if (msg.duration_s !== undefined) {
      resolved.duration_s = msg.duration_s;
    }
    else {
      resolved.duration_s = 0.0
    }

    if (msg.gesture_state !== undefined) {
      resolved.gesture_state = msg.gesture_state;
    }
    else {
      resolved.gesture_state = 0
    }

    if (msg.gesture_type !== undefined) {
      resolved.gesture_type = msg.gesture_type;
    }
    else {
      resolved.gesture_type = 0
    }

    if (msg.to_string !== undefined) {
      resolved.to_string = msg.to_string;
    }
    else {
      resolved.to_string = ''
    }

    if (msg.pointable_ids !== undefined) {
      resolved.pointable_ids = msg.pointable_ids;
    }
    else {
      resolved.pointable_ids = []
    }

    return resolved;
    }
};

module.exports = Gesture;
