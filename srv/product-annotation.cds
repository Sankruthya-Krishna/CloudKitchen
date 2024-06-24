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