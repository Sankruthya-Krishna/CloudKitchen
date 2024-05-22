using {com.test.rdb as db} from '../db/schema';
service CloudKitchen @(requires: 'authenticated-user') {
    entity Kitchen @(restrict:[{grant:['READ'], to:'cloudkitchenRead'},
    {grant:['WRITE'], to:'cloudkitchenWrite'},
    {grant:['DELETE'], to:'cloudkitchenDelete'}]) as projection on  db.Kitchen
}
annotate CloudKitchen.Kitchen with @odata.draft.enabled;