<div class="card">
    <div class="card-header with-icon">
       
        <i class="fa fa-money-bill-alt mr10"></i>{__("Contact")}

    </div>

    {if $sub_view == ""}

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover js_dataTable">
                    <thead>
                        <tr>
                            
                         
                            <!--<th>{__("Contact")}</th>-->
                            <th>{__("Sender Name")}</th>
                            <th>{__("Sender Message")}</th>
                            <th>{__("User phone")}</th>
                            <th>{__("country")}</th>                            
                            <th>{__("Contact Time")}</th>
                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                    <tbody>


                    {foreach $rows as $row}
                            <tr>
                               
                                <td>{$row['name']}</td>
                                
                                <td>{$row['message']}</td>

                                <td>{$row['user_phone']}</td>                               
                                                            
                                <td>{$row['country_nameAr']}</td> 



                                <td>{$row['time']}</td>
                              
                                <td>
                                  
  
                                                            
                                    
                                    <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-deleter" data-handle="Contact" data-id="{$row['idcontact']}">
                                        <i class="fa fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                        {/foreach}















                    </tbody>
                </table>
            </div>
        </div>

    

    



    {/if}




</div>