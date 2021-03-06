<!-- begin menubar_tags.tpl -->
<section id="menubar_tags">
  <h4>{'Related tags'|@translate}</h4>
  <div id="menuTagCloud">
    {foreach from=$block->data item=tag}
      <span>{strip}
        <a class="tagLevel{$tag.level}" href=
        {if isset($tag.U_ADD)}
          "{$tag.U_ADD}" title="{$pwg->l10n_dec('%d photo is also linked to current tags', '%d photos are also linked to current tags', $tag.counter)}" rel="nofollow">+
        {else}
          "{$tag.URL}" title="{'display photos linked to this tag'|@translate}">
        {/if}
          {$tag.name}</a></span>{/strip}
  {* ABOVE there should be no space between text, </a> and </span> elements to avoid IE8 bug https://connect.microsoft.com/IE/feedback/ViewFeedback.aspx?FeedbackID=366567 *}
    {/foreach}
  </div>
</section>
<!-- end menubar_tags.tpl -->
