// Generated by gencpp from file crazyflie_msgs/NoYawControl.msg
// DO NOT EDIT!


#ifndef CRAZYFLIE_MSGS_MESSAGE_NOYAWCONTROL_H
#define CRAZYFLIE_MSGS_MESSAGE_NOYAWCONTROL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace crazyflie_msgs
{
template <class ContainerAllocator>
struct NoYawControl_
{
  typedef NoYawControl_<ContainerAllocator> Type;

  NoYawControl_()
    : roll(0.0)
    , pitch(0.0)
    , thrust(0.0)
    , priority(0.0)  {
    }
  NoYawControl_(const ContainerAllocator& _alloc)
    : roll(0.0)
    , pitch(0.0)
    , thrust(0.0)
    , priority(0.0)  {
  (void)_alloc;
    }



   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _thrust_type;
  _thrust_type thrust;

   typedef double _priority_type;
  _priority_type priority;





  typedef boost::shared_ptr< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> const> ConstPtr;

}; // struct NoYawControl_

typedef ::crazyflie_msgs::NoYawControl_<std::allocator<void> > NoYawControl;

typedef boost::shared_ptr< ::crazyflie_msgs::NoYawControl > NoYawControlPtr;
typedef boost::shared_ptr< ::crazyflie_msgs::NoYawControl const> NoYawControlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crazyflie_msgs::NoYawControl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace crazyflie_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'crazyflie_msgs': ['/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "47183c443d602278cf66b107317355b1";
  }

  static const char* value(const ::crazyflie_msgs::NoYawControl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x47183c443d602278ULL;
  static const uint64_t static_value2 = 0xcf66b107317355b1ULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crazyflie_msgs/NoYawControl";
  }

  static const char* value(const ::crazyflie_msgs::NoYawControl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 roll\n\
float64 pitch\n\
float64 thrust\n\
float64 priority\n\
";
  }

  static const char* value(const ::crazyflie_msgs::NoYawControl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.thrust);
      stream.next(m.priority);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NoYawControl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie_msgs::NoYawControl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crazyflie_msgs::NoYawControl_<ContainerAllocator>& v)
  {
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "thrust: ";
    Printer<double>::stream(s, indent + "  ", v.thrust);
    s << indent << "priority: ";
    Printer<double>::stream(s, indent + "  ", v.priority);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CRAZYFLIE_MSGS_MESSAGE_NOYAWCONTROL_H
