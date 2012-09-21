using Android.App;
using Android.OS;

namespace MonoForAndroidApplication
{
	public class TestableActivity : Activity
	{
		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			UnlockScreenForTestAutomation();
		}

		protected void UnlockScreenForTestAutomation ()
		{
#if DEBUG
			const string keyguard = "keyguard";
			var mKeyGuardManager = (KeyguardManager)GetSystemService (keyguard);
			var mLock = mKeyGuardManager.NewKeyguardLock (this.GetType ().ToString ());
			mLock.DisableKeyguard ();
#endif
		}
	}
}

