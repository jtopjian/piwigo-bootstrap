<!-- begin mainpage_categories.tpl -->
{*define_derivative name='derivative_params' width=160 height=90 crop=true*}
{strip}{html_style}
.thumbnails
.thumbnails .wrap,
.thumbnails .wrap a {ldelim}
  width: {$derivative_params->max_width()+5}px;
}

.thumbnails .wrap {ldelim}
  height: {$derivative_params->max_height()+5}px;
}
{/html_style}{/strip}
{foreach from=$category_thumbnails item=cat name=cat_loop}
{assign var=derivative value=$pwg->derivative($derivative_params, $cat.representative.src_image)}
<div class="col-lg-4 col-md-5 col-xs-7">
  <div class="thumbnails">
    <span class="wrap">
      <a href="{$cat.URL}">
        <img src="{$derivative->get_url()}" data-src="{$derivative->get_url()}" alt="{$cat.TN_ALT}" title="{$cat.NAME|@replace:'"':' '|@strip_tags:false} - {'display this album'|@translate}">
      </a>
    </span>
    <div class="caption">
      <h5><a href="{$cat.URL}">{$cat.NAME}</a></h5>
      {if !empty($cat.icon_ts)}
        <img title="{$cat.icon_ts.TITLE}" src="{$ROOT_URL}{$themeconf.icon_dir}/recent{if $cat.icon_ts.IS_CHILD_DATE}_by_child{/if}.png" alt="(!)">
      {/if}
      {if isset($cat.INFO_DATES) }
        <p class="dates">{$cat.INFO_DATES}</p>
      {/if}
      <p>{$cat.CAPTION_NB_IMAGES}</p>
      {if not empty($cat.DESCRIPTION)}
        <p>{$cat.DESCRIPTION}</p>
      {/if}
    </div>
  </div>
</div>
{/foreach}
<!-- end mainpage_categories.tpl -->
