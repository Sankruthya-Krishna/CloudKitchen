// namespace com.satinfotech.cloudapps;
// using{managed,cuid} from '@sap/cds/common';
// entity Kitchen: managed ,cuid{
//     @title:'Name'
//     name:String(10);
//     @title:'Address'
//     address:String(50);
//     @title:'Address2'
//     address2:String(30);
//     @title:'phone number'
//     phoneNumber:String(5);
//     @title:'city'
//     city:String(10);
//     @title:'state'
//     state:String(20);
//     @title: 'Zip Code'  
//     zipCode: String(5);
// }

namespace com.test.rdb;
using {managed,cuid} from '@sap/cds/common';

entity Kitchen: managed,cuid{
    @title:'Name'
    name:String(10);
    @title:'Address'
    addr1:String(50);
    @title:'Address 2'
    addr2:String(50);
    @title:'City'
    city:String(50);
    @title:'State'
    state:String(50);
    @title:'Pin code'
    pincode:String(50);
    @title:'Phone number'
    phone:String(50);
}