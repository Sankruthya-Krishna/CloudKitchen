const { indexof } = require('@cap-js/postgres/lib/func');
const cds = require('@sap/cds');
 
module.exports = cds.service.impl(async function(){
    const productapi = await cds.connect.to('API_PRODUCT_SRV');
 
    this.on('READ','Products', async req => {
        req.query.SELECT.columns = [{ref:['Product']},{ref:['ProductType']},{ref:['ProductGroup']},{ref:['BaseUnit']},{ref:['to_Description'],expand:['*']}]
        let res = await productapi.run(req.query);  

        res.forEach((element) => {
            //console.log(element.to_Description);
            element.to_Description.forEach((item) => {
                if (item.Language='EN'){
                    element.ProductDescription=item.ProductDescription; 
                }
            })
        });
        
        //console.log(res);
        return res;
    });

    this.before('READ','ProductLocal', async req => {
        //console.log(this.entities);
        const {Products, ProductLocal} = this.entities;
        qry = SELECT.from(Products).columns([{ref:['Product']},{ref:['ProductType']},{ref:['ProductGroup']},{ref:['BaseUnit']},{ref:['to_Description'],expand:['*']}]).limit(1000);
        let res = await productapi.run(qry);
        
        res.forEach((element) => {
            //console.log(element.to_Description);
            element.to_Description.forEach((item) => {
                if (item.Language='EN'){
                    element.ProductDescription=item.ProductDescription; 
                }
            });
            delete(element.to_Description);
        });
        insqry = UPSERT.into(ProductLocal).entries(res);
        await cds.run(insqry);        
    } );
})
this.before('UPDATE','ProductLocal', async req => {
    const {Products, ProductLocal, ProductDescription} = this.entities;
    console.log(req.data);
    console.log("Fired Update");
   
    //delete(req.data.ProductDescription);
    console.log(req.data);
    updqry = UPDATE(ProductDescription).data({"ProductDescription":req.data.ProductDescription}).where({Product: req.data.Product, Language: 'EN'})
    await productapi.run(updqry);
});


   
