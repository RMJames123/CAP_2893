const cds = require('@sap/cds');

module.exports = class SalesOrder extends cds.ApplicationService {
    init() {

        const {zheader_2893, zitems_2893} = this.entities;

        this.before('NEW', zheader_2893.drafts, async (reqh)=>{
            const mquery = await SELECT.one.from(zheader_2893).columns(`max(id) as max`);
            if ( mquery.max === null) {
                mquery.max = 0;    
            };
            const tquery = await SELECT.one.from(zheader_2893.drafts).columns(`max(id) as max`);
            if ( tquery.max === null) {  
            } else {
                mquery.max = tquery.max;
            };
            reqh.data.id = ++mquery.max;
        });

            this.before('NEW', zitems_2893.drafts, async (reqi)=>{
            console.log("***** INICIO ITEMS *****")
            console.log(reqi.data);
            console.log("***** TERMINO ITEMS *****")
            const mquery = await SELECT.one.from(zitems_2893).columns(`max(id) as max`).where({header_headeruuid: reqi.data.header_headeruuid});
            if ( mquery.max === null) {
                mquery.max = 0;    
            };
            const tquery = await SELECT.one.from(zitems_2893.drafts).columns(`max(id) as max`).where({header_headeruuid: reqi.data.header_headeruuid});
            if ( tquery.max === null) {  
            } else {
                mquery.max = tquery.max;
            };
            reqi.data.id = ++mquery.max;
        });

        this.before('UPDATE', zheader_2893.drafts,(req)=>{
            console.log("Estoy a punto de hacer una actualizacion del pedido!!!!");
        });

        
        return super.init();
    }
}