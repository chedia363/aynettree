<div class="modal-header">
    <h6 class="modal-title">
        <i class="fa fa-images mr5"></i>{__("Create New Story")}
    </h6>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<form class="publisher-mini">
    <div class="modal-body">
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-control-label">{__("Message")}</label>
                    <textarea name="message" rows="5" dir="auto" class="form-control"></textarea>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="form-control-label">{__("Photos")}</label>
            <div class="attachments clearfix" data-type="photos">
                <ul>
                    <li class="add">
                        <i class="fa fa-camera js_x-uploader" data-handle="publisher-mini" data-multiple="true"></i>
                    </li>
                </ul>
            </div>
        </div>
        <div class="form-group">

            <label class="form-control-label">{__("Select background")}</label>

            <div class="custom-radios">
  <div>
    <input type="radio" id="color-1" name="color" value="1" checked>
    <label for="color-1">
      <span>
        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/check.svg" alt="Checked Icon" />
      </span>
    </label>
  </div>
  
  <div>
    <input type="radio" id="color-2" name="color" value="2">
    <label for="color-2">
      <span>
        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/check.svg" alt="Checked Icon" />
      </span>
    </label>
  </div>
  
  <div>
    <input type="radio" id="color-3" name="color" value="3">
    <label for="color-3">
      <span>
        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/check.svg" alt="Checked Icon" />
      </span>
    </label>
  </div>

  <div>
    <input type="radio" id="color-4" name="color" value="4">
    <label for="color-4">
      <span>
        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/check.svg" alt="Checked Icon" />
      </span>
    </label>
  </div>
</div>
        </div>

        <div class="form-group">
            <label class="form-control-label">{__("Videos")}</label>
            <div class="attachments clearfix" data-type="videos">
                <ul>
                    <li class="add">
                        <i class="fa fa-video js_x-uploader" data-type="video" data-handle="publisher-mini" data-multiple="true"></i>
                    </li>
                </ul>
            </div>
        </div>

        <!-- error -->
        <div class="alert alert-danger mb0 x-hidden"></div>
        <!-- error -->
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-primary js_publisher-story">{__("Publish")}</button>
    </div>
</form>