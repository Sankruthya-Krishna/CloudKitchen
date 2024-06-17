using {com.test.rdb as db} from '../db/schema';
using {API_PRODUCT_SRV as productapi} from './external/API_PRODUCT_SRV';
service CloudKitchen @(requires: 'authenticated-user') {
    entity Kitchen @(restrict:[{grant:['READ'], to:'cloudkitchenRead'},
    {grant:['WRITE'], to:'cloudkitchenWrite'},
    {grant:['DELETE'], to:'cloudkitchenDelete'}]) as projection on  db.Kitchen
     entity Products as projection on productapi.A_Product{
    Product,
    ProductType,
    BaseUnit,
    ProductGroup
  }
}
annotate CloudKitchen.Kitchen with @odata.draft.enabled;