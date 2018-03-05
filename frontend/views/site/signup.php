<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Signup';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-signup">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Please fill out the following fields to signup:</p>

    <div class="row">
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(['id' => 'form-order-article', 'enableAjaxValidation' => false,'enableClientValidation' => true,
								             'action' => ['/site/signup'], 'options' => ['enctype' => 'multipart/form-data']]); ?>

                <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

                <?= $form->field($model, 'email') ?>

                <?= $form->field($model, 'password')->passwordInput() ?>

                <div class="form-group">
                    <?= Html::submitButton('Signup', ['class' => 'btn btn-primary signup', 'name' => 'signup-button']) ?>
                </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
	
	<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning">Cancel <span class="glyphicon glyphicon-remove"></span></button>
		<button type="button" class="btn btn-danger">Continue <span class="glyphicon glyphicon-log-in"></span></button>
      </div>
    </div>

  </div>
</div>
	
</div>
<script type="text/javascript">
$(document).ready(function(){
    $(".sp").click(function(){
        $("#myModal").modal();
    });
});

	$('#form-order-article').on('beforeSubmit', function(e) {
    var form = $(this);
    var formData = form.serialize();
    $.ajax({
        url: form.attr("action"),
        type: form.attr("method"),
        data: formData,
        success: function (data) {
             $("#myModal").modal();
        },
        error: function () {
            Yii::$app->session->setFlash('success', 'Thank you for contacting us. We will respond to you as soon as possible.');
        }
    });
}).on('submit', function(e){
    e.preventDefault();
});
	
</script>