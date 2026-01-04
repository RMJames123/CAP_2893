const cds = require('@sap/cds');
const { LIMIT_COMPOUND_SELECT } = require('sqlite3');

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

        this.on('acceptOrder', async (req)=>{
            await UPDATE.entity(zheader_2893).set({orderstatus: 'Accept'}).where({headeruuid: req.params[0].headeruuid});
        });
        this.on('rejectOrder', async (req)=>{
            await UPDATE.entity(zheader_2893).set({orderstatus: 'Reject'}).where({headeruuid: req.params[0].headeruuid});
        });
 
        this.before('CREATE', zheader_2893.drafts, async (req)=>{

            const ft = new Date();
            const año = ft.getFullYear();
            const mes = String(ft.getMonth() + 1).padStart(2, '0'); 
            const dia = String(ft.getDate()).padStart(2, '0');
            const fecha = `${año}-${mes}-${dia}`;
            const {createon, deliverydate} = req.data;

            const result = await SELECT.from(zheader_2893.drafts).columns(`createon`,`deliverydate`).where({headeruuid : req.data.headeruuid})

 
        });

        this.before('UPDATE', zheader_2893.drafts, async (req)=>{

            const ft = new Date();
            const año = ft.getFullYear();
            const mes = String(ft.getMonth() + 1).padStart(2, '0'); 
            const dia = String(ft.getDate()).padStart(2, '0');
            const fecha = `${año}-${mes}-${dia}`;
            const {createon, deliverydate} = req.data;

            const result = await SELECT.from(zheader_2893.drafts).columns(`createon`,`deliverydate`).where({headeruuid : req.data.headeruuid})

            if (typeof createon === 'undefined') {        
                console.log("createon es igual a undefined");      
                if (deliverydate < fecha) {
                    console.log("deliverydate < fecha");
                    req.error(400,"Delivery Date, debe ser mayor o igual que la fecha actual");
                } else {
                    console.log("pregunta si result.createon < fecha");
                    if (result[0].createon < fecha) {
                        console.log("result.createon < fecha");
                        req.error(400,"Delivery Date, debe ser mayor o igual que la fecha actual");
                    } else {
                        console.log("pregunta si deliverydate < result.createon");
                        if (deliverydate < result[0].createon) {
                            console.log("deliverydate < result.createon");
                            req.error(400,"La fecha Create On, debe ser mayor o igual que la Delivery Date");
                        }
                    }
                }
            } else {
                if (createon < fecha) {
                    console.log("createon < fecha")
                    req.error(400,"La fecha Create On, debe ser mayor o igual que la fecha actual");
                } else {
                    console.log("pregunta si result.deliverydate < fecha");
                    if (result[0].deliverydate < fecha) {
                        console.log("result.deliverydate < fecha");
                        req.error(400,"Delivery Date, debe ser mayor o igual que la fecha actual");
                    } else {
                        console.log("pregunta si createon > result.deliverydate");
                        if (createon > result[0].deliverydate) {
                            console.log("createon > result.deliverydate");
                            req.error(400,"La fecha Create On, debe ser menor o igual que la Delivery Date");
                        } 
                    }
                }

            }

        });

        return super.init();

}
}