using {com.test.rdb as db} from '../db/schema';
service CloudKitchen {
    entity Kitchen as projection on  db.Kitchen
}
annotate CloudKitchen.Kitchen with @odata.draft.enabled;