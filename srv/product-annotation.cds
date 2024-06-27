using {CloudKitchen.ProductLocal as Product} from './cloudkitchen';

annotate Product with @(
    UI.LineItem:[
        {
            $Type:'UI.DataField',
            Value: Product
        },
        {
            $Type:'UI.DataField',
            Value: ProductDescription
        },
        {
            $Type:'UI.DataField',
            Value: BaseUnit
        },
        {
            $Type:'UI.DataField',
            Value: ProductType
        },
        {
            $Type:'UI.DataField',
            Value: ProductGroup
        },

    ]
);
annotate Product with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',         
                Value : Product,
            },
            // {
            //     $Type : 'UI.DataField',
                
            //     Value : product_type,
            // },
            {
                $Type : 'UI.DataField',
                
                Value : ProductDescription
            },
            {
                $Type : 'UI.DataField',
                
                Value : ProductGroup,
            },
            
            // {
            //     $Type : 'UI.DataField',
                
            //     Value : base_unit,
            // },
            {
                $Type : 'UI.DataField',                
                Value : ProductType,
            },
            {
                $Type : 'UI.DataField',                
                Value : BaseUnit,
            }
            
        ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        }
    ]
);