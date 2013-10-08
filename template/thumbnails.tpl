<!-- begin thumbnails.tpl -->
{if !empty($thumbnails)}
{*define_derivative name='derivative_params' width=160 height=90 crop=true*}
<style>
    .thumbnails,
    .thumbnails .wrap a
    .thumbnails .wrap {ldelim}
      width: {$derivative_params->max_width()+2}px;
    {rdelim}

    .thumbnails .wrap {ldelim}
      height: {$derivative_params->max_height()+3}px;
    {rdelim}

    .thumbnails {ldelim}
      padding: 10px;
    {rdelim}

    {if $derivative_params->max_width() > 600}
      .caption {ldelim}font-size: 130%{rdelim}
    {else}
      {if $derivative_params->max_width() > 400}
        .caption {ldelim}font-size: 110%{rdelim}
      {else}
        .caption {ldelim}font-size: 90%{rdelim}
      {/if}
    {/if}
</style>
{footer_script}
  var error_icon = "{$ROOT_URL}{$themeconf.icon_dir}/errors_small.png", max_requests = {$maxRequests};
{/footer_script}
{foreach from=$thumbnails item=thumbnail}
  {assign var=derivative value=$pwg->derivative($derivative_params, $thumbnail.src_image)}

  <div class="col-lg-4 col-md-5 col-xs-7">
    <div class="thumbnails">
      <span class="wrap">
      <a href="{$thumbnail.URL}">
        <img src="{$derivative->get_url()}" data-src="{$derivative->get_url()}" alt="{$thumbnail.TN_ALT}" title="{$thumbnail.TN_TITLE}">
      </a>
      </span>
      {if $SHOW_THUMBNAIL_CAPTION }
        <div class="caption">{$thumbnail.NAME}
          {if !empty($thumbnail.icon_ts)}
            <span class="glyphicon glyphicon-asterisk"></span>
          {/if}
          {if isset($thumbnail.NB_COMMENTS)}
            <span class="{if 0==$thumbnail.NB_COMMENTS}zero {/if}nb-comments">
            <br>
            {$pwg->l10n_dec('%d comment', '%d comments',$thumbnail.NB_COMMENTS)}
            </span>
          {/if}
          {if isset($thumbnail.NB_HITS)}
            <span class="{if 0==$thumbnail.NB_HITS}zero {/if}nb-hits">
            <br>
            {$pwg->l10n_dec('%d hit', '%d hits',$thumbnail.NB_HITS)}
            </span>
          {/if}
        </div>
      {/if}
    </div>
  </div>
{/foreach}
{/if}
<!-- end thumbnails.tpl -->
