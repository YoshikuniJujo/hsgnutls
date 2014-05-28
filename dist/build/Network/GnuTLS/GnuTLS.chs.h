#ifdef NETWORK_ALT
struct C2HS_COND_SENTRY_0;
#endif
#ifndef COMPAT_GNUTLS_1_0
struct C2HS_COND_SENTRY_1;
#endif
#ifdef NETWORK_ALT
struct C2HS_COND_SENTRY_2;
#endif
#include <gnutls/gnutls.h>
#ifdef COMPAT_GNUTLS_1_0
typedef gnutls_transport_ptr gnutls_transport_ptr_t;
typedef gnutls_connection_end gnutls_connection_end_t;
typedef gnutls_session gnutls_session_t;
typedef gnutls_dh_params gnutls_dh_params_t;
typedef gnutls_rsa_params gnutls_rsa_params_t;
typedef gnutls_anon_server_credentials gnutls_anon_server_credentials_t;
typedef gnutls_anon_client_credentials gnutls_anon_client_credentials_t;
typedef gnutls_certificate_credentials gnutls_certificate_credentials_t;
#endif
gnutls_session_t init_session_wrap(gnutls_connection_end_t con_end, void *sptr1, void *sptr2, int *err);


void replace_transport_stable_ptrs(gnutls_session_t session, void *p1, void *p2);

#ifdef NETWORK_ALT
struct C2HS_COND_SENTRY_3;
#endif
#ifndef COMPAT_GNUTLS_1_0
struct C2HS_COND_SENTRY_4;
#endif
