// Generated by gencpp from file crazyflie_msgs/NoYawControlStamped.msg
// DO NOT EDIT!


#ifndef CRAZYFLIE_MSGS_MESSAGE_NOYAWCONTROLSTAMPED_H
#define CRAZYFLIE_MSGS_MESSAGE_NOYAWCONTROLSTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <crazyflie_msgs/NoYawControl.h>

namespace crazyflie_msgs
{
template <class ContainerAllocator>
struct NoYawControlStamped_
{
  typedef NoYawControlStamped_<ContainerAllocator> Type;

  NoYawControlStamped_()
    : header()
    , control()  {
    }
  NoYawControlStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , control(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::crazyflie_msgs::NoYawControl_<ContainerAllocator>  _control_type;
  _control_type control;





  typedef boost::shared_ptr< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> const> ConstPtr;

}; // struct NoYawControlStamped_

typedef ::crazyflie_msgs::NoYawControlStamped_<std::allocator<void> > NoYawControlStamped;

typedef boost::shared_ptr< ::crazyflie_msgs::NoYawControlStamped > NoYawControlStampedPtr;
typedef boost::shared_ptr< ::crazyflie_msgs::NoYawControlStamped const> NoYawControlStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace crazyflie_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'crazyflie_msgs': ['/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "466772a94931602dc602bc0ab3b45e59";
  }

  static const char* value(const ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x466772a94931602dULL;
  static const uint64_t static_value2 = 0xc602bc0ab3b45e59ULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crazyflie_msgs/NoYawControlStamped";
  }

  static const char* value(const ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
NoYawControl control\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: crazyflie_msgs/NoYawControl\n\
float64 roll\n\
float64 pitch\n\
float64 thrust\n\
float64 priority\n\
";
  }

  static const char* value(const ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.control);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NoYawControlStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crazyflie_msgs::NoYawControlStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "control: ";
    s << std::endl;
    Printer< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> >::stream(s, indent + "  ", v.control);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CRAZYFLIE_MSGS_MESSAGE_NOYAWCONTROLSTAMPED_H
