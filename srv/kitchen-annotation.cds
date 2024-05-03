using {CloudKitchen.Kitchen as Kitchen} from './cloudkitchen';

annotate Kitchen with @(
    UI.LineItem: [
        {
            $Type:'UI.DataField',
            Value: name
        },
         {
            $Type:'UI.DataField',
            Value: addr1
        },
         {
            $Type:'UI.DataField',
            Value: addr2
        },
         {
            $Type:'UI.DataField',
            Value: city
        },
        {
            $Type:'UI.DataField',
            Value: state
        },
        {
            $Type:'UI.DataField',
            Value: pincode
        },
        {
            $Type:'UI.DataField',
            Value: phone
        },
        
    ]
);

annotate Kitchen with @(
    UI.FieldGroup #Kitchen : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type:'UI.DataField',
            Value: name
        },
         {
            $Type:'UI.DataField',
            Value: addr1
        },
         {
            $Type:'UI.DataField',
            Value: addr2
        },
         {
            $Type:'UI.DataField',
            Value: city
        },
        {
            $Type:'UI.DataField',
            Value: state
        },
        {
            $Type:'UI.DataField',
            Value: pincode
        },
        {
            $Type:'UI.DataField',
            Value: phone
        },
    ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#Kitchen',
        },
    ],
    
);