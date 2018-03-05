<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

/*use \yii\web\Request;
$baseUrl = str_replace('/frontend/web', '', (new Request)->getBaseUrl());*/

return [
    'id' => 'app-frontend',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'frontend\controllers',
    'modules' => [
        'user' => [
            'class' => 'dektrium\user\Module',
            'enableUnconfirmedLogin' => true,
            'confirmWithin' => 21600,
            'cost' => 12,
            'admins' => ['admin'],
            'enableFlashMessages' => false
        ],
        'admin' => [
            'layout' => '//left-menu',
             'class' => 'mdm\admin\Module',
             'controllerMap' => [
             'assignment' => [
                 'class' => 'mdm\admin\controllers\AssignmentController',
                 'userClassName' => 'common\models\User',
                 'idField' => 'user_id'
             ],
         
         ],
     ],
    ],
    'components' => [
        /*'request' => [
            'baseUrl' => $baseUrl,
        ],*/
        'request' => [
            'csrfParam' => '_csrf-frontend',
        ],
        // 'user' => [
        //     'identityClass' => 'common\models\User',
        //     'enableAutoLogin' => true,
        //     'identityCookie' => ['name' => '_identity-frontend', 'httpOnly' => true],
        // ],
     
        'session' => [
            // this is the name of the session cookie used for login on the frontend
            'name' => 'advanced-frontend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
       
		'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            // 'useFileTransport' => true,
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        'authManager' => [
            //'class' => 'app\components\MyManager',
               'class' => 'yii\rbac\DbManager', // or use 'yii\rbac\DbManager'
        ],
       /*'urlManager' => [
            'baseUrl' => $baseUrl,
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => []
        ]*/ 
    ],
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
         'allowActions' => [
             'site/*',
          
             // The actions listed here will be allowed to everyone including guests.
             // So, 'admin/*' should not appear here in the production, of course.
             // But in the earlier stages of your development, you may probably want to
             // add a lot of actions here until you finally completed setting up rbac,
             // otherwise you may not even take a first step.
        ]
     ],
    'params' => $params,
];
