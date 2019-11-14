<div class="card">
    <div class="card-header with-icon">
        <i class="fa fa-university mr10"></i>{__("Bank Receipts")}
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover js_dataTable">
                <thead>
                    <tr>
                        <th>{__("ID")}</th>
                        <th>{__("User")}</th>
                        <th>{__("Handle")}</th>
                        <th>{__("Time")}</th>
                        <th>{__("Actions")}</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $rows as $row}
                        <tr>
                            <td>{$row['transfer_id']}</td>
                            <td>
                                <a target="_blank" href="{$system['system_url']}/{$row['user_name']}">
                                    <img class="tbl-image" src="{$row['user_picture']}">
                                    {$row['user_firstname']} {$row['user_lastname']}
                                </a>
                            </td>
                            <td>
                                {if $row['handle'] == "wallet"}
                                    {__("Add Wallet Balance")} = <strong>{$system['system_currency_symbol']}{$row['price']}</strong>
                                {elseif $row['handle'] == "packages"}
                                    {$row['package_name']} {__("Package")} = <strong>{$system['system_currency_symbol']}{$row['package_price']}</strong>
                                {/if}
                            </td>
                            <td>{$row['time']|date_format:"%e %B %Y"}</td>
                            <td>
                                <button data-toggle="tooltip" data-placement="top" title='{__("View Bank Receipt")}' class="btn btn-sm btn-icon btn-rounded btn-info js_lightbox-nodata" data-image="{$system['system_uploads']}/{$row['bank_receipt']}">
                                    <i class="fa fa-paperclip"></i>
                                </button>
                                <button data-toggle="tooltip" data-placement="top" title='{__("Verify")}' class="btn btn-sm btn-icon btn-rounded btn-success js_admin-bank-accept" data-id="{$row['transfer_id']}">
                                    <i class="fa fa-check"></i>
                                </button>
                                <button data-toggle="tooltip" data-placement="top" title='{__("Decline")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-bank-decline" data-id="{$row['transfer_id']}">
                                    <i class="fa fa-times"></i>
                                </button>
                            </td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
    </div>

</div>