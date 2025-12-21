using com.salesorder as salesorder from '../db/schema';

service catalogService {
    entity zorderstat_2893 as projection on salesorder.zorderstat_2893;
    entity zcustomer_2893  as projection on salesorder.zcustomer_2893;
    entity zproducts_2893  as projection on salesorder.zproducts_2893;
    @odata.draft.enabled
    entity zheader_2893    as projection on salesorder.zheader_2893
    entity zitems_2893     as projection on salesorder.zitems_2893;
}
