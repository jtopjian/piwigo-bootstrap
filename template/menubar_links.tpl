<!-- begin menubar_identification -->
<div class="well">
<h4>{'Links'|@translate}</h4>
<ul class="nav nav-pills nav-stacked">
{foreach from=$block->data item=link}
  <li>
  <a href="{$link.URL}" {if isset($link.new_window)} onclick="window.open(this.href, '{$link.new_window.NAME}','{$link.new_window.FEATURES}'); return false;"{/if}>
    {$link.LABEL}
  </a>
  </li>
{/foreach}
</ul>
</div>
<!-- end menubar_identification -->
