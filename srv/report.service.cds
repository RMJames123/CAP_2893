using com.salesorder as salesorder from '../db/schema';

service reportService {

    entity repcustomer   as projection on salesorder.repcustomer;
    entity repproducts   as projection on salesorder.repproducts;
    entity reporderstat  as projection on salesorder.reporderstat;

    entity repventashead as projection on salesorder.repventashead;
    entity repventasitem as projection on salesorder.repventasitem;
}


