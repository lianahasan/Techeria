from django.contrib.auth.tokens import PasswordResetTokenGenerator



class AppTokenGenerator(PasswordResetTokenGenerator):
    def __make_hash_value(self, user, timestamp):
        return (user.is_active+user.pk+timestamp)

token_generator = AppTokenGenerator()