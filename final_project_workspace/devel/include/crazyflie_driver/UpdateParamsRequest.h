// Generated by gencpp from file crazyflie_driver/UpdateParamsRequest.msg
// DO NOT EDIT!


#ifndef CRAZYFLIE_DRIVER_MESSAGE_UPDATEPARAMSREQUEST_H
#define CRAZYFLIE_DRIVER_MESSAGE_UPDATEPARAMSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace crazyflie_driver
{
template <class ContainerAllocator>
struct UpdateParamsRequest_
{
  typedef UpdateParamsRequest_<ContainerAllocator> Type;

  UpdateParamsRequest_()
    : params()  {
    }
  UpdateParamsRequest_(const ContainerAllocator& _alloc)
    : params(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _params_type;
  _params_type params;





  typedef boost::shared_ptr< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct UpdateParamsRequest_

typedef ::crazyflie_driver::UpdateParamsRequest_<std::allocator<void> > UpdateParamsRequest;

typedef boost::shared_ptr< ::crazyflie_driver::UpdateParamsRequest > UpdateParamsRequestPtr;
typedef boost::shared_ptr< ::crazyflie_driver::UpdateParamsRequest const> UpdateParamsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace crazyflie_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'crazyflie_driver': ['/home/eecs149_rst/final_project_workspace/src/crazyflie_ros/crazyflie_driver/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "279e0627eb574ffe8968384218434f5f";
  }

  static const char* value(const ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x279e0627eb574ffeULL;
  static const uint64_t static_value2 = 0x8968384218434f5fULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crazyflie_driver/UpdateParamsRequest";
  }

  static const char* value(const ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] params\n\
";
  }

  static const char* value(const ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.params);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UpdateParamsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crazyflie_driver::UpdateParamsRequest_<ContainerAllocator>& v)
  {
    s << indent << "params[]" << std::endl;
    for (size_t i = 0; i < v.params.size(); ++i)
    {
      s << indent << "  params[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.params[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CRAZYFLIE_DRIVER_MESSAGE_UPDATEPARAMSREQUEST_H
