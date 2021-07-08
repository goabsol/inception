<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'CHANGE_DB_NAME' );

/** MySQL database username */
define( 'DB_USER', 'CHANGE_DB_USER' );

/** MySQL database password */
define( 'DB_PASSWORD', 'CHANGE_DB_PASSWORD' );

/** MySQL hostname */
define( 'DB_HOST', 'CHANGE_DB_HOST' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'ru^rs1_[~G{hEi#34o60pfv;Vo(-s+62VbwdFlI5xZhE26fa%<0vsi((DL6DXyTM' );
define( 'SECURE_AUTH_KEY',  '2g5aLWBwHcZ,e2pdk+1p_<Ysn+jau,),?W* b/AvV;kg>*+iNu 9k&R8BY3Z33Ya' );
define( 'LOGGED_IN_KEY',    'Kj4;Iim3OH)wTkR$jhaS _pM9yFchY,U+]?#g|s+/reaU[ruEKUVB+_ :<[Zy`E1' );
define( 'NONCE_KEY',        '[,mIM!S=_An{r/U6q9Mv3<83%<Y%GsJZuJs3x1DPq@)`&ShH3dnc~2IE;ZeNMYcC' );
define( 'AUTH_SALT',        'nj7^9.P!jS,2%zN* XJlJ}A|KyZ4w1 ?J~.P$pU3p|[+%S7YtiV$MghTMC>%Zc{b' );
define( 'SECURE_AUTH_SALT', 'fIi3dzeM=0[yiS&S:wm7Y-<X$$Y2Il~R|G=~N4_4yYi.d18H=C+LO}?2I[#<!T@0' );
define( 'LOGGED_IN_SALT',   'rF)V<l tCa S+}[>h`k9nI(UB}|1mn6&1y|]W;0Tp$TTQPirP:SG89cdSj{~#;$+' );
define( 'NONCE_SALT',       '`s9`pfh ]~@C;sFSGPOGLW!}lg76o(KULKu( C;YjPW4$W>=(p|/!FP:&S~I1w=~' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';