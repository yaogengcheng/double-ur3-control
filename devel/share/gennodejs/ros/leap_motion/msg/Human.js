// Auto-generated. Do not edit!

// (in-package leap_motion.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Hand = require('./Hand.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Human {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lmc_frame_id = null;
      this.nr_of_hands = null;
      this.nr_of_fingers = null;
      this.nr_of_gestures = null;
      this.current_frames_per_second = null;
      this.to_string = null;
      this.right_hand = null;
      this.left_hand = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lmc_frame_id')) {
        this.lmc_frame_id = initObj.lmc_frame_id
      }
      else {
        this.lmc_frame_id = 0;
      }
      if (initObj.hasOwnProperty('nr_of_hands')) {
        this.nr_of_hands = initObj.nr_of_hands
      }
      else {
        this.nr_of_hands = 0;
      }
      if (initObj.hasOwnProperty('nr_of_fingers')) {
        this.nr_of_fingers = initObj.nr_of_fingers
      }
      else {
        this.nr_of_fingers = 0;
      }
      if (initObj.hasOwnProperty('nr_of_gestures')) {
        this.nr_of_gestures = initObj.nr_of_gestures
      }
      else {
        this.nr_of_gestures = 0;
      }
      if (initObj.hasOwnProperty('current_frames_per_second')) {
        this.current_frames_per_second = initObj.current_frames_per_second
      }
      else {
        this.current_frames_per_second = 0.0;
      }
      if (initObj.hasOwnProperty('to_string')) {
        this.to_string = initObj.to_string
      }
      else {
        this.to_string = '';
      }
      if (initObj.hasOwnProperty('right_hand')) {
        this.right_hand = initObj.right_hand
      }
      else {
        this.right_hand = new Hand();
      }
      if (initObj.hasOwnProperty('left_hand')) {
        this.left_hand = initObj.left_hand
      }
      else {
        this.left_hand = new Hand();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Human
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lmc_frame_id]
    bufferOffset = _serializer.int32(obj.lmc_frame_id, buffer, bufferOffset);
    // Serialize message field [nr_of_hands]
    bufferOffset = _serializer.int32(obj.nr_of_hands, buffer, bufferOffset);
    // Serialize message field [nr_of_fingers]
    bufferOffset = _serializer.int32(obj.nr_of_fingers, buffer, bufferOffset);
    // Serialize message field [nr_of_gestures]
    bufferOffset = _serializer.int32(obj.nr_of_gestures, buffer, bufferOffset);
    // Serialize message field [current_frames_per_second]
    bufferOffset = _serializer.float32(obj.current_frames_per_second, buffer, bufferOffset);
    // Serialize message field [to_string]
    bufferOffset = _serializer.string(obj.to_string, buffer, bufferOffset);
    // Serialize message field [right_hand]
    bufferOffset = Hand.serialize(obj.right_hand, buffer, bufferOffset);
    // Serialize message field [left_hand]
    bufferOffset = Hand.serialize(obj.left_hand, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Human
    let len;
    let data = new Human(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lmc_frame_id]
    data.lmc_frame_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nr_of_hands]
    data.nr_of_hands = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nr_of_fingers]
    data.nr_of_fingers = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nr_of_gestures]
    data.nr_of_gestures = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_frames_per_second]
    data.current_frames_per_second = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [to_string]
    data.to_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [right_hand]
    data.right_hand = Hand.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_hand]
    data.left_hand = Hand.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.to_string.length;
    length += Hand.getMessageSize(object.right_hand);
    length += Hand.getMessageSize(object.left_hand);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leap_motion/Human';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2817a017ab58b244566892058c4f6e6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    # A unique ID for this Frame.
    int32 lmc_frame_id
    
    # How many hands were detected in the frame
    int32 nr_of_hands
    
    # How many fingers were detected in the frame
    int32 nr_of_fingers
    
    # How many gestures were detected in the frame
    int32 nr_of_gestures
    
    # The rate at which the Leap Motion software is providing frames of data (in frames per second). 
    float32 current_frames_per_second
    
    # A string containing a brief, human readable description of the Frame object. 
    string to_string
    
    # If there were any hands detected in the frame then the 
    # hand.msg will be added here
    Hand right_hand
    Hand left_hand
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: leap_motion/Hand
    std_msgs/Header header
    
    # A unique ID assigned to this Hand object
    int32 lmc_hand_id
    
    # This changed to between true/false depending if there's a hand detected in the LMC frame
    bool is_present
    
    # This changed to between true/false depending if there's a hand detected in the LMC frame
    bool valid_gestures
    
    # The duration of time this Hand has been visible to the Leap Motion Controller. 
    float32 time_visible
    
    # How confident we are with a given hand pose. 
    # The confidence level ranges between 0.0 and 1.0 inclusive.
    float32 confidence
    
    # The following three angles are in radians!
    float32 roll
    float32 pitch
    float32 yaw
    
    # The direction vector
    geometry_msgs/Vector3 direction
    
    # The normal vector
    geometry_msgs/Vector3 normal
    
    # The angle between the fingers and the hand of a grab hand pose. 
    # In radians
    float32 grab_strength
    
    # The distance between the thumb and index finger of a pinch hand pose. 
    float32 pinch_strength
    
    # The rate of change of the palm position in meters/second. 
    float32[] palm_velocity
    
    # The center position of the palm in meters from the Leap Motion Controller origin. 
    geometry_msgs/Point palm_center
    
    # The estimated width of the palm when the hand is in a flat position. 
    float32 palm_width
    
    # The radius (m) of a sphere fit to the curvature of this hand. 
    float32 sphere_radius
    
    # The center of a sphere fit to the curvature of this hand. 
    float32[] sphere_center
    
    # A string containing a brief, human readable description of the Hand object. 
    string to_string 
    
    # A list of fingers and gestures associated with this hand
    Finger[] finger_list
    Gesture[] gesture_list
    
    # The arm associated with this hand
    Arm arm
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: leap_motion/Finger
    std_msgs/Header header
    
    # A unique id given to this finger
    int32 lmc_finger_id
    
    # The name of this finger. 
    uint8 type
    
    # The estimated length of the finger in meters. 
    float32 length
    
    # The estimated width of the finger in meters.
    float32 width
    
    # A string containing a brief, human readable description of the Finger object. 
    string to_string
    
    # List of bones associated with this finger
    Bone[] bone_list
    ================================================================================
    MSG: leap_motion/Bone
    std_msgs/Header header
    
    # The name of this bone. 
    uint8 type
    
    # The estimated length of the bone in meters.
    float32 length
    
    # The estimated with of the bone in meters.
    float32 width
    
    # A string containing a brief, human readable description of the Bone object. 
    string to_string
    
    # The base of the bone, closest to the wrist. 
    geometry_msgs/Pose bone_start
    
    # The end of the bone, closest to the finger tip. 
    geometry_msgs/Pose bone_end
    
    # The midpoint of the bone. 
    float32[] center
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: leap_motion/Gesture
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
    
    
    ================================================================================
    MSG: leap_motion/Arm
    std_msgs/Header header
    
    # The position and orientation of the elbow. 
    geometry_msgs/Pose elbow
    
    # The position and orientation of the wrist. 
    geometry_msgs/Pose wrist
    
    # The midpoint of the forearm. 
    float32[] center
    
    # The direction vector of the forearm
    geometry_msgs/Vector3 direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Human(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lmc_frame_id !== undefined) {
      resolved.lmc_frame_id = msg.lmc_frame_id;
    }
    else {
      resolved.lmc_frame_id = 0
    }

    if (msg.nr_of_hands !== undefined) {
      resolved.nr_of_hands = msg.nr_of_hands;
    }
    else {
      resolved.nr_of_hands = 0
    }

    if (msg.nr_of_fingers !== undefined) {
      resolved.nr_of_fingers = msg.nr_of_fingers;
    }
    else {
      resolved.nr_of_fingers = 0
    }

    if (msg.nr_of_gestures !== undefined) {
      resolved.nr_of_gestures = msg.nr_of_gestures;
    }
    else {
      resolved.nr_of_gestures = 0
    }

    if (msg.current_frames_per_second !== undefined) {
      resolved.current_frames_per_second = msg.current_frames_per_second;
    }
    else {
      resolved.current_frames_per_second = 0.0
    }

    if (msg.to_string !== undefined) {
      resolved.to_string = msg.to_string;
    }
    else {
      resolved.to_string = ''
    }

    if (msg.right_hand !== undefined) {
      resolved.right_hand = Hand.Resolve(msg.right_hand)
    }
    else {
      resolved.right_hand = new Hand()
    }

    if (msg.left_hand !== undefined) {
      resolved.left_hand = Hand.Resolve(msg.left_hand)
    }
    else {
      resolved.left_hand = new Hand()
    }

    return resolved;
    }
};

module.exports = Human;
