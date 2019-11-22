<div class="card">
    <div class="card-header with-icon">
       
        <i class="fa fa-money-bill-alt mr10"></i>{__("Stories")}

    </div>

    {if $sub_view == ""}

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover js_dataTable">
                    <thead>
                        <tr>
                            <th>{__("Username")}</th>
                       
                            <th>{__("Source")}</th>
                            <th>{__("text")}</th>
                            <th>{__("Time")}</th>
                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                    <tbody>


                    {foreach $rows as $row}
                            <tr>
                                <td>{$row['name']}</td>
                                {if $row['source']=="photos/1.png"}
                                <td>{__("No Image or Video")}</td>
                                {else}
                                <td><img class="tbl-imageStry1" src="{$system['system_uploads']}/{$row['source']}"></td>
                                {/if}
                                {if $row['text']==""}
                                <td>{__("No Message for this story")}</td>
                                {else}
                                <td>{$row['text']}</td>
                                {/if}
                                
                                <td>{$row['time']}</td>
                              
                                <td>
                                  

                                                            
                                    
                                    <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-deleter" data-handle="Stories" data-id="{$row['media_id']}">
                                        <i class="fa fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                        {/foreach}


















                   
                      <!--     {foreach $rows as $row}
                  {var_dump($row)}
                            <tr>
                        <td>{$row['name']} </td>
                              <td>{$row['items']['src']} </td>
                          <td>{$row['time']}</td> 
                                    {foreach $row as $roww} 
                                  
                                    {var_dump($row['items'])}
        <td><img class="tbl-imageStry1" src="{$system['system_uploads']}/{$roww['source']}"></td>
                                    {foreach $roww as $chedia}


                                      <tr>
                                <td>{$chedia['namee']}</td>
                                {if $chedia['src']=="photos/1.png"}
                                <td>{__("No Image or Video")}</td>
                                {else}
                                <td><img class="tbl-imageStry1" src="{$chedia['src']}"></td>
                                {/if}
                                {if $chedia['linkText']==""}
                                <td>{__("No Message for this story")}</td>
                                {else}
                                <td>{$chedia['linkText']}</td>
                                {/if}
                                
                                <td>{$chedia['time']}</td>

                                 <td>
                                    
                                    <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-deleter" data-handle="Stories" data-id="{$chedia['media_id']}">
                                        <i class="fa fa-trash-alt"></i>
                                    </button>
                                </td>
 
                                  {/foreach}
                                    



                                     
                                    {/foreach}
 
                              
                               
                            </tr>
                        {/foreach} -->
                    </tbody>
                </table>
            </div>
        </div>

    

    



    {/if}




</div>