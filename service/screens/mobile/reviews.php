
<?php if($proposal_price == 0){ ?>
    <div class="card rounded-0 mb-0 border-0 <?=($lang_dir == "right" ? 'text-right':'')?>" id="compare">
    <div class="card-header"><h5>Compare Packages</h5></div>
    <div class="card-body p-0">
    <div class="table-responsive">
    <table class="table table-bordered mb-0" style="width: 100%;">
    <tbody>
    <?php
    
    $get_p_1 = $db->select("proposal_packages",array("proposal_id"=>$proposal_id,"package_name"=>'Basic'));
    $row_1 = $get_p_1->fetch();
    $p_id_1 = $row_1->package_id;
    $p_name_1 = $row_1->package_name;
    $p_description_1 = $row_1->description;
    $p_revisions_1 = str_replace("_","",$row_1->revisions);
    $p_delivery_time_1 = $row_1->delivery_time;
    $p_price_1 = $row_1->price;
    
    $get_p_2 = $db->select("proposal_packages",array("proposal_id"=>$proposal_id,"package_name"=>'Standard'));
    $row_2 = $get_p_2->fetch();
    $p_id_2 = $row_2->package_id;
    $p_name_2 = $row_2->package_name;
    $p_description_2 = $row_2->description;
    $p_revisions_2 = str_replace("_"," ",$row_2->revisions);
    $p_delivery_time_2 = $row_2->delivery_time;
    $p_price_2 = $row_2->price;

    $get_p_3 = $db->select("proposal_packages",array("proposal_id"=>$proposal_id,"package_name"=>'Advance'));
    $row_3 = $get_p_3->fetch();
    $p_id_3 = $row_3->package_id;
    $p_name_3 = $row_3->package_name;
    $p_description_3 = $row_3->description;
    $p_revisions_3 = str_replace("_","",$row_3->revisions);
    $p_delivery_time_3 = $row_3->delivery_time;
    $p_price_3 = $row_3->price;

    if($proposal_seller_vacation == "on"){
      $disabled = "disabled='disabled'";
    }else{
      $disabled = "";
    }
    
    ?>
    <tr class="<?=($lang_dir == "right" ? 'text-right':'')?>">
      <td class="b-ccc">  </td>
      <td><h5><?= $lang['packages']['basic']; ?></h5></td>
      <td><h5><?= $lang['packages']['standard']; ?></h5></td>
      <td><h5><?= $lang['packages']['advance']; ?></h5></td>
    </tr>

    <tr class="<?=($lang_dir == "right" ? 'text-right':'')?>" width="100%">
      <td class="b-ccc">Description</td>
      <td><?= $p_description_1; ?></td>
      <td><?= $p_description_2; ?></td>
      <td><?= $p_description_3; ?></td>
    </tr>

    <?php
    $get_a = $db->select("package_attributes",array("package_id"=>$p_id_1));
    while($row_a = $get_a->fetch()){
    $a_id = $row_a->attribute_id;
    $a_name = $row_a->attribute_name;
    $a_value = $row_a->attribute_value;
    ?>
    <tr>
      <td class="b-ccc" width="150"> <?= $a_name; ?> </td>
      <td><?= $a_value; ?> </td>
      <?php
      $get_v = $db->query("select * from package_attributes where proposal_id='$proposal_id' and attribute_name='$a_name' and not attribute_id='$a_id'");
      while($row_v = $get_v->fetch()){
      $value = $row_v->attribute_value;
      ?>
      <td><?= ucfirst($value); ?> </td>
    <?php } ?>
    </tr>
    <?php } ?>
    
    <tr>
      <td class="b-ccc"> Revisions </td>
      <td><?= ucwords($p_revisions_1); ?></td>
      <td><?= ucwords($p_revisions_2); ?></td>
      <td><?= ucwords($p_revisions_3); ?></td>
    </tr>
    <tr>
      <td class="b-ccc"> Delivery Time </td>
      <td><?= $p_delivery_time_1; ?> Days</td>
      <td><?= $p_delivery_time_2; ?> Days</td>
      <td><?= $p_delivery_time_3; ?> Days</td>
    </tr>

    </tbody>
    </table>
    </div>
    </div>
    </div>
<?php } ?>

<div class="reviews-package mb-3"><!--- reviews-package Starts --->
<header><h2> Reviews<small>
<span class="star-rating-s15">
  <svg class="fit-svg-icon full_star" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg" width="15" height="15">
    <path d="M1728 647q0 22-26 48l-363 354 86 500q1 7 1 20 0 21-10.5 35.5t-30.5 14.5q-19 0-40-12l-449-236-449 236q-22 12-40 12-21 0-31.5-14.5t-10.5-35.5q0-6 2-20l86-500-364-354q-25-27-25-48 0-37 56-46l502-73 225-455q19-41 49-41t49 41l225 455 502 73q56 9 56 46z"></path>
  </svg>
</span>
<span class="total-rating-out-five"><?php if($proposal_rating == "0"){echo "0.0"; }else{printf("%.1f", $average_rating);} ?></span>
<span class="total-rating">(<?= $count_reviews; ?>)</span>
</small>
</h2>
<span class="ficon ficon-chevron-down"></span> 
<div class="filter-dd rf">
<select>
<option class="js-gtm-event-auto" value="all">Most Recent</option>
<option class="js-gtm-event-auto" value="good">Positive Reviews</option>
<option class="js-gtm-event-auto" value="bad">Negative Reviews</option>
</select>
</div>
</header>
<div class="reviews-wrap"><!--- reviews-wrap Starts --->
<?php include("mobile_proposal_reviews.php"); ?>
</div><!--- reviews-wrap Ends --->
</div><!--- reviews-package Ends --->