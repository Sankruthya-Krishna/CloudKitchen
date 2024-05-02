using {com.test.rdb as db} from '../db/schema';
annotate db.Kitchen with @(
    UI.LineItem:[
     {
            $Type : 'UI.DataField',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : addr1
        },
        {
            $Type : 'UI.DataField',
            Value : addr2
        },
        {
            $Type : 'UI.DataField',
            Value : city
        },
        {
            $Type : 'UI.DataField',
            Value : state
        },
        {
            $Type : 'UI.DataField',
            Value : pincode
        },
        {
            $Type : 'UI.DataField',
            Value : phone
        }
    ],
UI.FieldGroup #kitchen:{
      $Type: 'UI.FieldGroupType',
      Data :[
   {
           Label:'Name',
            Value : name
        },
        {
                     Label:'Address 1',
            Value : addr1
        },
        {
                       Label:'Addres 2',
            Value : addr2
        },
        {
                      Label:'City',
            Value : city
        },
        {
                     Label:'State',
            Value : state
        },
        {
                     Label:'Pincode',
            Value : pincode
        },
        {
                      Label:'Phone number',
            Value : phone
        }
      ]
},
  
    
    
    UI.Facets :[
        {
           $Type : 'UI.CollectionFacet',
            ID    : 'KitchenFacet',
            Label : 'Kitchen Details',
            Target: '@UI.FieldGroup#kitchen'
        },
    ],
);