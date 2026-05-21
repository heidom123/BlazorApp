; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [474 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1422 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x0024d0f62dee05bd, ; 1: Xamarin.KotlinX.Coroutines.Core.dll => 360
	i64 u0x0071cf2d27b7d61e, ; 2: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 339
	i64 u0x01109b0e4d99e61f, ; 3: System.ComponentModel.Annotations.dll => 13
	i64 u0x01689251854dc4e9, ; 4: Microsoft.CodeAnalysis.Workspaces => 209
	i64 u0x02123411c4e01926, ; 5: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 327
	i64 u0x022f31be406de945, ; 6: Microsoft.Extensions.Options.ConfigurationExtensions => 245
	i64 u0x02827b47e97f2378, ; 7: System.Security.Cryptography.Pkcs.dll => 270
	i64 u0x0284512fad379f7e, ; 8: System.Runtime.Handles => 107
	i64 u0x02a4c5a44384f885, ; 9: Microsoft.Extensions.Caching.Memory => 219
	i64 u0x02abedc11addc1ed, ; 10: lib_Mono.Android.Runtime.dll.so => 174
	i64 u0x02f55bf70672f5c8, ; 11: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x032267b2a94db371, ; 12: lib_Xamarin.AndroidX.AppCompat.dll.so => 281
	i64 u0x032344a7b9e98c5d, ; 13: ko/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 396
	i64 u0x03621c804933a890, ; 14: System.Buffers => 7
	i64 u0x0363ac97a4cb84e6, ; 15: SQLitePCLRaw.provider.e_sqlite3.dll => 263
	i64 u0x0377283fc1d7573a, ; 16: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 194
	i64 u0x037d1588e3c00ebd, ; 17: Abc.Infra => 466
	i64 u0x0399610510a38a38, ; 18: lib_System.Private.DataContractSerialization.dll.so => 88
	i64 u0x043032f1d071fae0, ; 19: ru/Microsoft.Maui.Controls.resources => 453
	i64 u0x044440a55165631e, ; 20: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 431
	i64 u0x046eb1581a80c6b0, ; 21: vi/Microsoft.Maui.Controls.resources => 459
	i64 u0x047408741db2431a, ; 22: Xamarin.AndroidX.DynamicAnimation => 301
	i64 u0x0517ef04e06e9f76, ; 23: System.Net.Primitives => 72
	i64 u0x0565d18c6da3de38, ; 24: Xamarin.AndroidX.RecyclerView => 331
	i64 u0x057bf9fa9fb09f7c, ; 25: Microsoft.Data.Sqlite.dll => 212
	i64 u0x0581db89237110e9, ; 26: lib_System.Collections.dll.so => 12
	i64 u0x05989cb940b225a9, ; 27: Microsoft.Maui.dll => 252
	i64 u0x05a1c25e78e22d87, ; 28: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 104
	i64 u0x05c27cf2b380bbf2, ; 29: lib_Microsoft.AspNetCore.Hosting.Server.Abstractions.dll.so => 196
	i64 u0x05ef98b6a1db882c, ; 30: lib_Microsoft.Data.Sqlite.dll.so => 212
	i64 u0x06076b5d2b581f08, ; 31: zh-HK/Microsoft.Maui.Controls.resources => 460
	i64 u0x06388ffe9f6c161a, ; 32: System.Xml.Linq.dll => 159
	i64 u0x06600c4c124cb358, ; 33: System.Configuration.dll => 19
	i64 u0x0661ce255d4cd460, ; 34: lib-ko-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 422
	i64 u0x067f95c5ddab55b3, ; 35: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 306
	i64 u0x0680a433c781bb3d, ; 36: Xamarin.AndroidX.Collection.Jvm => 288
	i64 u0x0690533f9fc14683, ; 37: lib_Microsoft.AspNetCore.Components.dll.so => 185
	i64 u0x069fff96ec92a91d, ; 38: System.Xml.XPath.dll => 164
	i64 u0x070b0847e18dab68, ; 39: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 303
	i64 u0x072496def57d8011, ; 40: Microsoft.Extensions.WebEncoders.dll => 248
	i64 u0x0739448d84d3b016, ; 41: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 343
	i64 u0x07469f2eecce9e85, ; 42: mscorlib.dll => 170
	i64 u0x07c57877c7ba78ad, ; 43: ru/Microsoft.Maui.Controls.resources.dll => 453
	i64 u0x07d37bbbefc20fdd, ; 44: lib-fr-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 419
	i64 u0x07dcdc7460a0c5e4, ; 45: System.Collections.NonGeneric => 10
	i64 u0x08122e52765333c8, ; 46: lib_Microsoft.Extensions.Logging.Debug.dll.so => 242
	i64 u0x0883f5fb92189b50, ; 47: ja/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 395
	i64 u0x088610fc2509f69e, ; 48: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 344
	i64 u0x08a7c865576bbde7, ; 49: System.Reflection.Primitives => 98
	i64 u0x08c9d051a4a817e5, ; 50: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 299
	i64 u0x08f3c9788ee2153c, ; 51: Xamarin.AndroidX.DrawerLayout => 300
	i64 u0x09138715c92dba90, ; 52: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 53: lib_Microsoft.Extensions.Options.dll.so => 244
	i64 u0x092266563089ae3e, ; 54: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x09ab38ad9baf7214, ; 55: lib-zh-Hant-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 415
	i64 u0x09d144a7e214d457, ; 56: System.Security.Cryptography => 129
	i64 u0x09d931c8a4087ae3, ; 57: lib_Microsoft.AspNetCore.DataProtection.Abstractions.dll.so => 194
	i64 u0x09e2b9f743db21a8, ; 58: lib_System.Reflection.Metadata.dll.so => 97
	i64 u0x09f55a066e3b2af6, ; 59: fr/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 419
	i64 u0x0a805f95d98f597b, ; 60: lib_Microsoft.Extensions.Caching.Abstractions.dll.so => 218
	i64 u0x0a980941fa112bc4, ; 61: System.Security.Cryptography.Xml => 271
	i64 u0x0abb3e2b271edc45, ; 62: System.Threading.Channels.dll => 143
	i64 u0x0b06b1feab070143, ; 63: System.Formats.Tar => 39
	i64 u0x0b3b632c3bbee20c, ; 64: sk/Microsoft.Maui.Controls.resources => 454
	i64 u0x0b6aff547b84fbe9, ; 65: Xamarin.KotlinX.Serialization.Core.Jvm => 363
	i64 u0x0be1e582d0d8ef1a, ; 66: lib_Microsoft.AspNetCore.Cryptography.KeyDerivation.dll.so => 192
	i64 u0x0be2e1f8ce4064ed, ; 67: Xamarin.AndroidX.ViewPager => 346
	i64 u0x0c279376b1ae96ae, ; 68: lib_System.CodeDom.dll.so => 264
	i64 u0x0c3ca6cc978e2aae, ; 69: pt-BR/Microsoft.Maui.Controls.resources => 450
	i64 u0x0c59ad9fbbd43abe, ; 70: Mono.Android => 175
	i64 u0x0c65741e86371ee3, ; 71: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 275
	i64 u0x0c74af560004e816, ; 72: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c7790f60165fc06, ; 73: lib_Microsoft.Maui.Essentials.dll.so => 253
	i64 u0x0c83c82812e96127, ; 74: lib_System.Net.Mail.dll.so => 68
	i64 u0x0cce4bce83380b7f, ; 75: Xamarin.AndroidX.Security.SecurityCrypto => 336
	i64 u0x0cdf5c96ef381c46, ; 76: Microsoft.VisualStudio.SolutionPersistence => 256
	i64 u0x0cf6a95dadccbb9c, ; 77: zh-Hant/Microsoft.CodeAnalysis.resources.dll => 376
	i64 u0x0d13cd7cce4284e4, ; 78: System.Security.SecureString => 132
	i64 u0x0d34fb076d8103ae, ; 79: Microsoft.Extensions.Identity.Core.dll => 236
	i64 u0x0d63f4f73521c24f, ; 80: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 335
	i64 u0x0e04e702012f8463, ; 81: Xamarin.AndroidX.Emoji2 => 302
	i64 u0x0e14e73a54dda68e, ; 82: lib_System.Net.NameResolution.dll.so => 69
	i64 u0x0e7acf675d09f75a, ; 83: it/Microsoft.CodeAnalysis.resources => 368
	i64 u0x0eba9c561385a823, ; 84: fr/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 393
	i64 u0x0ec47e16319c99d9, ; 85: lib-de-Microsoft.CodeAnalysis.resources.dll.so => 365
	i64 u0x0f37dd7a62ae99af, ; 86: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 289
	i64 u0x0f5e7abaa7cf470a, ; 87: System.Net.HttpListener => 67
	i64 u0x0f743667428d5a06, ; 88: lib_Abc.Aids.dll.so => 463
	i64 u0x0f948418e9ebd6de, ; 89: Microsoft.AspNetCore.Hosting.Abstractions.dll => 195
	i64 u0x1001f97bbe242e64, ; 90: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102a31b45304b1da, ; 91: Xamarin.AndroidX.CustomView => 298
	i64 u0x105b053cfbaba1f0, ; 92: lib_Microsoft.CodeAnalysis.dll.so => 206
	i64 u0x1065c4cb554c3d75, ; 93: System.IO.IsolatedStorage.dll => 52
	i64 u0x107588db03592df5, ; 94: lib-pt-BR-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 424
	i64 u0x10a579e648829775, ; 95: Microsoft.CodeAnalysis => 206
	i64 u0x10f6cfcbcf801616, ; 96: System.IO.Compression.Brotli => 43
	i64 u0x1140109eb2e77ceb, ; 97: Microsoft.Extensions.ObjectPool.dll => 243
	i64 u0x114443cdcf2091f1, ; 98: System.Security.Cryptography.Primitives => 127
	i64 u0x114df3ff11650a65, ; 99: ru/Microsoft.CodeAnalysis.CSharp.resources => 386
	i64 u0x11a603952763e1d4, ; 100: System.Net.Mail => 68
	i64 u0x11a70d0e1009fb11, ; 101: System.Net.WebSockets.dll => 83
	i64 u0x11f26371eee0d3c1, ; 102: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 316
	i64 u0x11fbe62d469cc1c8, ; 103: Microsoft.VisualStudio.DesignTools.TapContract.dll => 471
	i64 u0x1208da3842d90ff3, ; 104: lib-ko-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 383
	i64 u0x12128b3f59302d47, ; 105: lib_System.Xml.Serialization.dll.so => 161
	i64 u0x123639456fb056da, ; 106: System.Reflection.Emit.Lightweight.dll => 94
	i64 u0x12521e9764603eaa, ; 107: lib_System.Resources.Reader.dll.so => 101
	i64 u0x125b7f94acb989db, ; 108: Xamarin.AndroidX.RecyclerView.dll => 331
	i64 u0x12d3b63863d4ab0b, ; 109: lib_System.Threading.Overlapped.dll.so => 144
	i64 u0x131463e9417f52d4, ; 110: de/Microsoft.CodeAnalysis.CSharp.resources => 378
	i64 u0x134eab1061c395ee, ; 111: System.Transactions => 154
	i64 u0x138567fa954faa55, ; 112: Xamarin.AndroidX.Browser => 285
	i64 u0x1393617ead22674a, ; 113: zh-Hant/Microsoft.CodeAnalysis.resources => 376
	i64 u0x13a01de0cbc3f06c, ; 114: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 437
	i64 u0x13beedefb0e28a45, ; 115: lib_System.Xml.XmlDocument.dll.so => 165
	i64 u0x13f1e5e209e91af4, ; 116: lib_Java.Interop.dll.so => 172
	i64 u0x13f1e880c25d96d1, ; 117: he/Microsoft.Maui.Controls.resources => 438
	i64 u0x143d8ea60a6a4011, ; 118: Microsoft.Extensions.DependencyInjection.Abstractions => 226
	i64 u0x1446c7a06695f3ea, ; 119: ko/Microsoft.CodeAnalysis.CSharp.resources.dll => 383
	i64 u0x14668cb638910c1c, ; 120: pl/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 423
	i64 u0x1497051b917530bd, ; 121: lib_System.Net.WebSockets.dll.so => 83
	i64 u0x14b78ce3adce0011, ; 122: Microsoft.VisualStudio.DesignTools.TapContract => 471
	i64 u0x14d612a531c79c05, ; 123: Xamarin.JSpecify.dll => 357
	i64 u0x14e68447938213b7, ; 124: Xamarin.AndroidX.Collection.Ktx.dll => 289
	i64 u0x1506378c0000a92a, ; 125: lib-tr-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 387
	i64 u0x152a448bd1e745a7, ; 126: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 127: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x15bdc156ed462f2f, ; 128: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 129: System.Resources.Writer.dll => 103
	i64 u0x16054fdcb6b3098b, ; 130: Microsoft.Extensions.DependencyModel.dll => 227
	i64 u0x16bf2a22df043a09, ; 131: System.IO.Pipes.dll => 56
	i64 u0x16ea2b318ad2d830, ; 132: System.Security.Cryptography.Algorithms => 122
	i64 u0x16eeae54c7ebcc08, ; 133: System.Reflection.dll => 100
	i64 u0x17125c9a85b4929f, ; 134: lib_netstandard.dll.so => 171
	i64 u0x1716866f7416792e, ; 135: lib_System.Security.AccessControl.dll.so => 120
	i64 u0x172e1ce589c1583b, ; 136: lib_Abc.Shared.dll.so => 468
	i64 u0x174f71c46216e44a, ; 137: Xamarin.KotlinX.Coroutines.Core => 360
	i64 u0x1752c12f1e1fc00c, ; 138: System.Core => 21
	i64 u0x177fec9e788b3880, ; 139: pt-BR/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 424
	i64 u0x17976319373fd889, ; 140: cs/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 390
	i64 u0x17b56e25558a5d36, ; 141: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 441
	i64 u0x17e5b3bcd152fcd9, ; 142: de/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 417
	i64 u0x17f9358913beb16a, ; 143: System.Text.Encodings.Web => 139
	i64 u0x1809fb23f29ba44a, ; 144: lib_System.Reflection.TypeExtensions.dll.so => 99
	i64 u0x18402a709e357f3b, ; 145: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 363
	i64 u0x1846583dde1e5afa, ; 146: de/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 417
	i64 u0x18950fae1c2bc98e, ; 147: lib-cs-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 377
	i64 u0x18a9befae51bb361, ; 148: System.Net.WebClient => 79
	i64 u0x18f0ce884e87d89a, ; 149: nb/Microsoft.Maui.Controls.resources.dll => 447
	i64 u0x192712eaa333180f, ; 150: lib-zh-Hant-Microsoft.CodeAnalysis.resources.dll.so => 376
	i64 u0x19386417ce809faf, ; 151: zh-Hant/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 428
	i64 u0x194dc72e14e1bd09, ; 152: de/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 391
	i64 u0x19777fba3c41b398, ; 153: Xamarin.AndroidX.Startup.StartupRuntime.dll => 338
	i64 u0x19a4c090f14ebb66, ; 154: System.Security.Claims => 121
	i64 u0x1a63352be1054efd, ; 155: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 196
	i64 u0x1a761daba47c6ad5, ; 156: ja/Microsoft.CodeAnalysis.resources.dll => 369
	i64 u0x1a91866a319e9259, ; 157: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1a9e139e4762aaf8, ; 158: es/Microsoft.CodeAnalysis.CSharp.resources.dll => 379
	i64 u0x1aac34d1917ba5d3, ; 159: lib_System.dll.so => 168
	i64 u0x1aad60783ffa3e5b, ; 160: lib-th-Microsoft.Maui.Controls.resources.dll.so => 456
	i64 u0x1aea8f1c3b282172, ; 161: lib_System.Net.Ping.dll.so => 71
	i64 u0x1b4b7a1d0d265fa2, ; 162: Xamarin.Android.Glide.DiskLruCache => 274
	i64 u0x1b8700ce6e547c0b, ; 163: lib_Microsoft.AspNetCore.Components.Forms.dll.so => 186
	i64 u0x1bbdb16cfa73e785, ; 164: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 317
	i64 u0x1bc766e07b2b4241, ; 165: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 332
	i64 u0x1bea5a36aa1ed8de, ; 166: Microsoft.AspNetCore.Http.Extensions => 199
	i64 u0x1c074bdeeae2e1c9, ; 167: lib-pl-Microsoft.CodeAnalysis.resources.dll.so => 371
	i64 u0x1c292b1598348d77, ; 168: Microsoft.Extensions.Diagnostics.dll => 228
	i64 u0x1c5217a9e4973753, ; 169: lib_Microsoft.Extensions.FileProviders.Physical.dll.so => 233
	i64 u0x1c753b5ff15bce1b, ; 170: Mono.Android.Runtime.dll => 174
	i64 u0x1cd47467799d8250, ; 171: System.Threading.Tasks.dll => 148
	i64 u0x1d23eafdc6dc346c, ; 172: System.Globalization.Calendars.dll => 40
	i64 u0x1d68fe2a371ca539, ; 173: zh-Hans/Microsoft.CodeAnalysis.Workspaces.resources.dll => 414
	i64 u0x1da4110562816681, ; 174: Xamarin.AndroidX.Security.SecurityCrypto.dll => 336
	i64 u0x1db6820994506bf5, ; 175: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 176: System.Diagnostics.StackTrace => 30
	i64 u0x1e3d87657e9659bc, ; 177: Xamarin.AndroidX.Navigation.UI => 329
	i64 u0x1e71143913d56c10, ; 178: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 445
	i64 u0x1e7c31185e2fb266, ; 179: lib_System.Threading.Tasks.Parallel.dll.so => 147
	i64 u0x1ed8fcce5e9b50a0, ; 180: Microsoft.Extensions.Options.dll => 244
	i64 u0x1f055d15d807e1b2, ; 181: System.Xml.XmlSerializer => 166
	i64 u0x1f198ea93d5594b5, ; 182: Microsoft.Extensions.Identity.Core => 236
	i64 u0x1f1ed22c1085f044, ; 183: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f2c5edaae56f4c2, ; 184: tr/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 400
	i64 u0x1f61df9c5b94d2c1, ; 185: lib_System.Numerics.dll.so => 86
	i64 u0x1f750bb5421397de, ; 186: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 340
	i64 u0x1fe22396eed9deb5, ; 187: lib-pl-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 410
	i64 u0x20237ea48006d7a8, ; 188: lib_System.Net.WebClient.dll.so => 79
	i64 u0x205440c1540c3cc2, ; 189: lib-zh-Hant-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 428
	i64 u0x209375905fcc1bad, ; 190: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x209f3cd626a2acb5, ; 191: Abc.Soft.App => 0
	i64 u0x20fab3cf2dfbc8df, ; 192: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x21081d2333151425, ; 193: Abc.Soft.App.dll => 0
	i64 u0x210c5bb16b7260a2, ; 194: lib_Microsoft.Extensions.Validation.dll.so => 247
	i64 u0x2110167c128cba15, ; 195: System.Globalization => 42
	i64 u0x21419508838f7547, ; 196: System.Runtime.CompilerServices.VisualC => 105
	i64 u0x2174319c0d835bc9, ; 197: System.Runtime => 119
	i64 u0x2198e5bc8b7153fa, ; 198: Xamarin.AndroidX.Annotation.Experimental.dll => 279
	i64 u0x219ea1b751a4dee4, ; 199: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21cc7e445dcd5469, ; 200: System.Reflection.Emit.ILGeneration => 93
	i64 u0x220fd4f2e7c48170, ; 201: th/Microsoft.Maui.Controls.resources => 456
	i64 u0x224538d85ed15a82, ; 202: System.IO.Pipes => 56
	i64 u0x22908438c6bed1af, ; 203: lib_System.Threading.Timer.dll.so => 151
	i64 u0x22fbc14e981e3b45, ; 204: lib_Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll.so => 470
	i64 u0x237be844f1f812c7, ; 205: System.Threading.Thread.dll => 149
	i64 u0x23807c59646ec4f3, ; 206: lib_Microsoft.EntityFrameworkCore.dll.so => 213
	i64 u0x23852b3bdc9f7096, ; 207: System.Resources.ResourceManager => 102
	i64 u0x23986dd7e5d4fc01, ; 208: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x2407aef2bbe8fadf, ; 209: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 210: Xamarin.AndroidX.Core.dll => 294
	i64 u0x245ebc45bf698558, ; 211: ru/Microsoft.CodeAnalysis.resources.dll => 373
	i64 u0x247619fe4413f8bf, ; 212: System.Runtime.Serialization.Primitives.dll => 116
	i64 u0x24cbd781fb976f7f, ; 213: lib_Microsoft.CodeAnalysis.Workspaces.MSBuild.dll.so => 211
	i64 u0x24de8d301281575e, ; 214: Xamarin.Android.Glide => 272
	i64 u0x252073cc3caa62c2, ; 215: fr/Microsoft.Maui.Controls.resources.dll => 437
	i64 u0x256b8d41255f01b1, ; 216: Xamarin.Google.Crypto.Tink.Android => 353
	i64 u0x25a0a7eff76ea08e, ; 217: SQLitePCLRaw.batteries_v2.dll => 260
	i64 u0x2626d536c88621f2, ; 218: lib-ko-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 396
	i64 u0x2662c629b96b0b30, ; 219: lib_Xamarin.Kotlin.StdLib.dll.so => 358
	i64 u0x268c1439f13bcc29, ; 220: lib_Microsoft.Extensions.Primitives.dll.so => 246
	i64 u0x26a670e154a9c54b, ; 221: System.Reflection.Extensions.dll => 96
	i64 u0x26d077d9678fe34f, ; 222: System.IO.dll => 58
	i64 u0x272377f9edc266a2, ; 223: tr/Microsoft.CodeAnalysis.resources => 374
	i64 u0x273f3515de5faf0d, ; 224: id/Microsoft.Maui.Controls.resources.dll => 442
	i64 u0x2742545f9094896d, ; 225: hr/Microsoft.Maui.Controls.resources => 440
	i64 u0x27458c1163a5ce22, ; 226: Microsoft.Extensions.Validation => 247
	i64 u0x274d85d83ad40513, ; 227: lib_Xamarin.AndroidX.Window.WindowCore.dll.so => 349
	i64 u0x2759af78ab94d39b, ; 228: System.Net.WebSockets => 83
	i64 u0x2760ac2972e51bf5, ; 229: lib-cs-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 390
	i64 u0x27b2b16f3e9de038, ; 230: Xamarin.Google.Crypto.Tink.Android.dll => 353
	i64 u0x27b410442fad6cf1, ; 231: Java.Interop.dll => 172
	i64 u0x27b97e0d52c3034a, ; 232: System.Diagnostics.Debug => 26
	i64 u0x2801845a2c71fbfb, ; 233: System.Net.Primitives.dll => 72
	i64 u0x286835e259162700, ; 234: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 330
	i64 u0x28b311fffbc0f8df, ; 235: Microsoft.AspNetCore.WebUtilities => 204
	i64 u0x28e52865585a1ebe, ; 236: Microsoft.Extensions.Diagnostics.Abstractions.dll => 229
	i64 u0x2949f3617a02c6b2, ; 237: Xamarin.AndroidX.ExifInterface => 304
	i64 u0x294e312cfc58cbe5, ; 238: pl/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 423
	i64 u0x29aeab763a527e52, ; 239: lib_Xamarin.AndroidX.Navigation.Common.Android.dll.so => 325
	i64 u0x29e4f22f4ae1c7db, ; 240: pl/Microsoft.CodeAnalysis.Workspaces.resources => 410
	i64 u0x29f947844fb7fc11, ; 241: Microsoft.Maui.Controls.HotReload.Forms => 469
	i64 u0x2a128783efe70ba0, ; 242: uk/Microsoft.Maui.Controls.resources.dll => 458
	i64 u0x2a3b095612184159, ; 243: lib_System.Net.NetworkInformation.dll.so => 70
	i64 u0x2a6507a5ffabdf28, ; 244: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ad156c8e1354139, ; 245: fi/Microsoft.Maui.Controls.resources => 436
	i64 u0x2ad5d6b13b7a3e04, ; 246: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 247: System.Text.RegularExpressions.dll => 141
	i64 u0x2afc1c4f898552ee, ; 248: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b148910ed40fbf9, ; 249: zh-Hant/Microsoft.Maui.Controls.resources.dll => 462
	i64 u0x2b43a708440d3cd8, ; 250: lib_Abc.Infra.dll.so => 466
	i64 u0x2b4d4904cebfa4e9, ; 251: Microsoft.Extensions.FileSystemGlobbing => 234
	i64 u0x2b564917bfb442f9, ; 252: lib_Abc.Jobs.dll.so => 467
	i64 u0x2b6989d78cba9a15, ; 253: Xamarin.AndroidX.Concurrent.Futures.dll => 290
	i64 u0x2c40db0dbedda89b, ; 254: lib_Microsoft.AspNetCore.WebUtilities.dll.so => 204
	i64 u0x2c8bd14bb93a7d82, ; 255: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 449
	i64 u0x2cbd9262ca785540, ; 256: lib_System.Text.Encoding.CodePages.dll.so => 136
	i64 u0x2cc9e1fed6257257, ; 257: lib_System.Reflection.Emit.Lightweight.dll.so => 94
	i64 u0x2cd723e9fe623c7c, ; 258: lib_System.Private.Xml.Linq.dll.so => 90
	i64 u0x2d169d318a968379, ; 259: System.Threading.dll => 152
	i64 u0x2d20145f27cfc1d2, ; 260: Xamarin.AndroidX.Window.WindowCore.Jvm.dll => 350
	i64 u0x2d47774b7d993f59, ; 261: sv/Microsoft.Maui.Controls.resources.dll => 455
	i64 u0x2d5ffcae1ad0aaca, ; 262: System.Data.dll => 24
	i64 u0x2d6295bc2ab86a27, ; 263: ja/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 395
	i64 u0x2db915caf23548d2, ; 264: System.Text.Json.dll => 140
	i64 u0x2dcaa0bb15a4117a, ; 265: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e2ced2c3c6a1edc, ; 266: lib_System.Threading.AccessControl.dll.so => 142
	i64 u0x2e4d2e03e610a6e9, ; 267: pl/Microsoft.CodeAnalysis.resources => 371
	i64 u0x2e5a40c319acb800, ; 268: System.IO.FileSystem => 51
	i64 u0x2e6f1f226821322a, ; 269: el/Microsoft.Maui.Controls.resources.dll => 434
	i64 u0x2e8ff3fae87a8245, ; 270: lib_Microsoft.JSInterop.dll.so => 249
	i64 u0x2f02f94df3200fe5, ; 271: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 272: System.Xml.ReaderWriter => 160
	i64 u0x2f5911d9ba814e4e, ; 273: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 274: lib_System.Xml.dll.so => 167
	i64 u0x2feb4d2fcda05cfd, ; 275: Microsoft.Extensions.Caching.Abstractions.dll => 218
	i64 u0x309ee9eeec09a71e, ; 276: lib_Xamarin.AndroidX.Fragment.dll.so => 305
	i64 u0x30c6dda129408828, ; 277: System.IO.IsolatedStorage => 52
	i64 u0x310d9651ec86c411, ; 278: Microsoft.Extensions.FileProviders.Embedded => 232
	i64 u0x31195fef5d8fb552, ; 279: _Microsoft.Android.Resource.Designer.dll => 473
	i64 u0x312c8ed623cbfc8d, ; 280: Xamarin.AndroidX.Window.dll => 348
	i64 u0x31496b779ed0663d, ; 281: lib_System.Reflection.DispatchProxy.dll.so => 92
	i64 u0x32243413e774362a, ; 282: Xamarin.AndroidX.CardView.dll => 286
	i64 u0x3235427f8d12dae1, ; 283: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x324622a9fd95b0c8, ; 284: lib-cs-Microsoft.CodeAnalysis.resources.dll.so => 364
	i64 u0x329753a17a517811, ; 285: fr/Microsoft.Maui.Controls.resources => 437
	i64 u0x32aa989ff07a84ff, ; 286: lib_System.Xml.ReaderWriter.dll.so => 160
	i64 u0x33642d5508314e46, ; 287: Microsoft.Extensions.FileSystemGlobbing.dll => 234
	i64 u0x33829542f112d59b, ; 288: System.Collections.Immutable => 9
	i64 u0x33a31443733849fe, ; 289: lib-es-Microsoft.Maui.Controls.resources.dll.so => 435
	i64 u0x33e03d7b100711f1, ; 290: zh-Hans/Microsoft.CodeAnalysis.Workspaces.resources => 414
	i64 u0x341abc357fbb4ebf, ; 291: lib_System.Net.Sockets.dll.so => 78
	i64 u0x346a212343615ac5, ; 292: lib_System.Linq.AsyncEnumerable.dll.so => 59
	i64 u0x3496c1e2dcaf5ecc, ; 293: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34bd01fd4be06ee3, ; 294: lib_Microsoft.Extensions.FileProviders.Composite.dll.so => 231
	i64 u0x34dfd74fe2afcf37, ; 295: Microsoft.Maui => 252
	i64 u0x34e292762d9615df, ; 296: cs/Microsoft.Maui.Controls.resources.dll => 431
	i64 u0x34ef56e1435b2843, ; 297: pl/Microsoft.CodeAnalysis.CSharp.resources.dll => 384
	i64 u0x3508234247f48404, ; 298: Microsoft.Maui.Controls => 250
	i64 u0x353590da528c9d22, ; 299: System.ComponentModel.Annotations => 13
	i64 u0x3549870798b4cd30, ; 300: lib_Xamarin.AndroidX.ViewPager2.dll.so => 347
	i64 u0x355282fc1c909694, ; 301: Microsoft.Extensions.Configuration => 220
	i64 u0x3552fc5d578f0fbf, ; 302: Xamarin.AndroidX.Arch.Core.Common => 283
	i64 u0x355c649948d55d97, ; 303: lib_System.Runtime.Intrinsics.dll.so => 111
	i64 u0x356653662ca42eb1, ; 304: lib-it-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 407
	i64 u0x35766456ffb7a7b4, ; 305: fr/Microsoft.CodeAnalysis.CSharp.resources.dll => 380
	i64 u0x3598b7b6237a86b6, ; 306: lib_Microsoft.AspNetCore.Authentication.dll.so => 180
	i64 u0x35bf814e2d496b74, ; 307: lib_Microsoft.CodeAnalysis.Workspaces.dll.so => 209
	i64 u0x35ea9d1c6834bc8c, ; 308: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 320
	i64 u0x3628ab68db23a01a, ; 309: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x3673b042508f5b6b, ; 310: lib_System.Runtime.Extensions.dll.so => 106
	i64 u0x36740f1a8ecdc6c4, ; 311: System.Numerics => 86
	i64 u0x367ae971a19a6491, ; 312: Abc.Domain.dll => 465
	i64 u0x36b2b50fdf589ae2, ; 313: System.Reflection.Emit.Lightweight => 94
	i64 u0x36cada77dc79928b, ; 314: System.IO.MemoryMappedFiles => 53
	i64 u0x374ef46b06791af6, ; 315: System.Reflection.Primitives.dll => 98
	i64 u0x375a0c086b00470b, ; 316: Microsoft.AspNetCore.Authentication.dll => 180
	i64 u0x376bf93e521a5417, ; 317: lib_Xamarin.Jetbrains.Annotations.dll.so => 356
	i64 u0x37bc29f3183003b6, ; 318: lib_System.IO.dll.so => 58
	i64 u0x37fd73cba07e0b9d, ; 319: lib_Microsoft.AspNetCore.Cryptography.Internal.dll.so => 191
	i64 u0x380134e03b1e160a, ; 320: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 321: System.Runtime.CompilerServices.Unsafe => 104
	i64 u0x38143d85e217351a, ; 322: System.Composition.Hosting => 267
	i64 u0x3837e860635e56ed, ; 323: it/Microsoft.CodeAnalysis.Workspaces.resources => 407
	i64 u0x3843b9508197bc53, ; 324: pt-BR/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 398
	i64 u0x385c17636bb6fe6e, ; 325: Xamarin.AndroidX.CustomView.dll => 298
	i64 u0x38869c811d74050e, ; 326: System.Net.NameResolution.dll => 69
	i64 u0x393c226616977fdb, ; 327: lib_Xamarin.AndroidX.ViewPager.dll.so => 346
	i64 u0x395e37c3334cf82a, ; 328: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 430
	i64 u0x39aa39fda111d9d3, ; 329: Newtonsoft.Json => 259
	i64 u0x39c3107c28752af1, ; 330: lib_Microsoft.Extensions.FileProviders.Abstractions.dll.so => 230
	i64 u0x39eb5ad7e3b83323, ; 331: fr/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 393
	i64 u0x3a3d69d1881104d1, ; 332: lib-de-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 417
	i64 u0x3ab5859054645f72, ; 333: System.Security.Cryptography.Primitives.dll => 127
	i64 u0x3ad75090c3fac0e9, ; 334: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 332
	i64 u0x3ae44ac43a1fbdbb, ; 335: System.Runtime.Serialization => 118
	i64 u0x3b519320d3a43198, ; 336: lib-ko-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 409
	i64 u0x3b860f9932505633, ; 337: lib_System.Text.Encoding.Extensions.dll.so => 137
	i64 u0x3be6248c2bc7dc8c, ; 338: Microsoft.JSInterop.dll => 249
	i64 u0x3be99b43dd39dd37, ; 339: Xamarin.AndroidX.SavedState.SavedState.Android => 334
	i64 u0x3c3aafb6b3a00bf6, ; 340: lib_System.Security.Cryptography.X509Certificates.dll.so => 128
	i64 u0x3c4049146b59aa90, ; 341: System.Runtime.InteropServices.JavaScript => 108
	i64 u0x3c7c495f58ac5ee9, ; 342: Xamarin.Kotlin.StdLib => 358
	i64 u0x3c7e5ed3d5db71bb, ; 343: System.Security => 133
	i64 u0x3ca05b43ec08224f, ; 344: Microsoft.AspNetCore.Http.Extensions.dll => 199
	i64 u0x3cd9d281d402eb9b, ; 345: Xamarin.AndroidX.Browser.dll => 285
	i64 u0x3d1c50cc001a991e, ; 346: Xamarin.Google.Guava.ListenableFuture.dll => 355
	i64 u0x3d2b1913edfc08d7, ; 347: lib_System.Threading.ThreadPool.dll.so => 150
	i64 u0x3d3bb3d2c5b17453, ; 348: Microsoft.CodeAnalysis.ExternalAccess.RazorCompiler => 210
	i64 u0x3d46f0b995082740, ; 349: System.Xml.Linq => 159
	i64 u0x3d72cabf118cc6eb, ; 350: cs/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 416
	i64 u0x3d8a8f400514a790, ; 351: Xamarin.AndroidX.Fragment.Ktx.dll => 306
	i64 u0x3d9c2a242b040a50, ; 352: lib_Xamarin.AndroidX.Core.dll.so => 294
	i64 u0x3da7781d6333a8fe, ; 353: SQLitePCLRaw.batteries_v2 => 260
	i64 u0x3db495de2204755c, ; 354: Microsoft.Extensions.Configuration.FileExtensions => 223
	i64 u0x3dbb6b9f5ab90fa7, ; 355: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 301
	i64 u0x3e5441657549b213, ; 356: Xamarin.AndroidX.ResourceInspection.Annotation => 332
	i64 u0x3e57d4d195c53c2e, ; 357: System.Reflection.TypeExtensions => 99
	i64 u0x3e580c35ecfc1247, ; 358: lib_Microsoft.AspNetCore.Http.dll.so => 197
	i64 u0x3e616ab4ed1f3f15, ; 359: lib_System.Data.dll.so => 24
	i64 u0x3e7f8912b96e5065, ; 360: Microsoft.AspNetCore.Components.WebView.dll => 189
	i64 u0x3f1d226e6e06db7e, ; 361: Xamarin.AndroidX.SlidingPaneLayout.dll => 337
	i64 u0x3f510adf788828dd, ; 362: System.Threading.Tasks.Extensions => 146
	i64 u0x3f6f5914291cdcf7, ; 363: Microsoft.Extensions.Hosting.Abstractions => 235
	i64 u0x3f9488d1edef88fe, ; 364: lib-pt-BR-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 398
	i64 u0x407a10bb4bf95829, ; 365: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 324
	i64 u0x40c98b6bd77346d4, ; 366: Microsoft.VisualBasic.dll => 3
	i64 u0x415c502eb40e7418, ; 367: es/Microsoft.CodeAnalysis.resources.dll => 366
	i64 u0x41833cf766d27d96, ; 368: mscorlib => 170
	i64 u0x41cab042be111c34, ; 369: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 282
	i64 u0x41f93add55d80a27, ; 370: lib_Microsoft.Extensions.Localization.dll.so => 238
	i64 u0x423a9ecc4d905a88, ; 371: lib_System.Resources.ResourceManager.dll.so => 102
	i64 u0x423bf51ae7def810, ; 372: System.Xml.XPath => 164
	i64 u0x42462ff15ddba223, ; 373: System.Resources.Reader.dll => 101
	i64 u0x4291015ff4e5ef71, ; 374: Xamarin.AndroidX.Core.ViewTree.dll => 296
	i64 u0x4294a05ba79b4e3b, ; 375: Microsoft.AspNetCore.Authentication.Cookies.dll => 182
	i64 u0x42a31b86e6ccc3f0, ; 376: System.Diagnostics.Contracts => 25
	i64 u0x42d76b1d438bed3f, ; 377: Microsoft.AspNetCore.Identity => 201
	i64 u0x430e95b891249788, ; 378: lib_System.Reflection.Emit.dll.so => 95
	i64 u0x43375950ec7c1b6a, ; 379: netstandard.dll => 171
	i64 u0x434c4e1d9284cdae, ; 380: Mono.Android.dll => 175
	i64 u0x43505013578652a0, ; 381: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 277
	i64 u0x437d06c381ed575a, ; 382: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43950f84de7cc79a, ; 383: pl/Microsoft.Maui.Controls.resources.dll => 449
	i64 u0x43c077442b230f64, ; 384: Xamarin.AndroidX.Tracing.Tracing.Android => 341
	i64 u0x43e8ca5bc927ff37, ; 385: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 303
	i64 u0x448bd33429269b19, ; 386: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 387: lib_System.Runtime.Serialization.Primitives.dll.so => 116
	i64 u0x4515080865a951a5, ; 388: Xamarin.Kotlin.StdLib.dll => 358
	i64 u0x45344658e8f1a46d, ; 389: Microsoft.AspNetCore.Authentication.Core => 183
	i64 u0x45381a84e83c2906, ; 390: lib-tr-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 426
	i64 u0x453c1277f85cf368, ; 391: lib_Microsoft.EntityFrameworkCore.Abstractions.dll.so => 214
	i64 u0x4545802489b736b9, ; 392: Xamarin.AndroidX.Fragment.Ktx => 306
	i64 u0x454b4d1e66bb783c, ; 393: Xamarin.AndroidX.Lifecycle.Process => 313
	i64 u0x45c40276a42e283e, ; 394: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 395: System.AppContext.dll => 6
	i64 u0x45fcc9fd66f25095, ; 396: Microsoft.Extensions.DependencyModel => 227
	i64 u0x463d680a1dec0810, ; 397: System.Security.Cryptography.Xml.dll => 271
	i64 u0x46a4213bc97fe5ae, ; 398: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 453
	i64 u0x47358bd471172e1d, ; 399: lib_System.Xml.Linq.dll.so => 159
	i64 u0x475461b41cd2bae5, ; 400: lib-zh-Hant-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 389
	i64 u0x47daf4e1afbada10, ; 401: pt/Microsoft.Maui.Controls.resources => 451
	i64 u0x480c0a47dd42dd81, ; 402: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x4843e6c1ee585264, ; 403: Microsoft.EntityFrameworkCore.Design.dll => 215
	i64 u0x48d8ed46e9461716, ; 404: es/Microsoft.CodeAnalysis.Workspaces.resources => 405
	i64 u0x497eb1d03ac05c8a, ; 405: lib_Microsoft.Extensions.WebEncoders.dll.so => 248
	i64 u0x49e952f19a4e2022, ; 406: System.ObjectModel => 87
	i64 u0x49ea01c721d701b5, ; 407: lib_Microsoft.Net.Http.Headers.dll.so => 255
	i64 u0x49f61f655a6a21de, ; 408: Microsoft.Extensions.Localization.Abstractions.dll => 239
	i64 u0x49f9e6948a8131e4, ; 409: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 345
	i64 u0x4a1afd3bf9c69c98, ; 410: fr/Microsoft.CodeAnalysis.resources => 367
	i64 u0x4a4f1047df83044b, ; 411: lib_System.Composition.AttributedModel.dll.so => 265
	i64 u0x4a5667b2462a664b, ; 412: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 329
	i64 u0x4a59e8951c30f637, ; 413: lib-zh-Hans-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 414
	i64 u0x4a7a18981dbd56bc, ; 414: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4aa5c60350917c06, ; 415: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 312
	i64 u0x4ab74cf6fbc69f3b, ; 416: Microsoft.AspNetCore.Components.QuickGrid => 187
	i64 u0x4b07a0ed0ab33ff4, ; 417: System.Runtime.Extensions.dll => 106
	i64 u0x4b2c56ec7a03ca88, ; 418: lib-ja-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 408
	i64 u0x4b484a0d637947d7, ; 419: lib-zh-Hans-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 388
	i64 u0x4b558744a6e1abe0, ; 420: lib-de-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 378
	i64 u0x4b576d47ac054f3c, ; 421: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 422: System.Text.Json => 140
	i64 u0x4c2029a97af23a8d, ; 423: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android => 322
	i64 u0x4c3f0936b4ddca39, ; 424: Microsoft.Build.Framework => 205
	i64 u0x4c7755cf07ad2d5f, ; 425: System.Net.Http.Json.dll => 65
	i64 u0x4ca014ceac582c86, ; 426: Microsoft.EntityFrameworkCore.Relational.dll => 216
	i64 u0x4cb66d7fdf45d66b, ; 427: ko/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 396
	i64 u0x4cc5f15266470798, ; 428: lib_Xamarin.AndroidX.Loader.dll.so => 323
	i64 u0x4cf6f67dc77aacd2, ; 429: System.Net.NetworkInformation.dll => 70
	i64 u0x4d3183dd245425d4, ; 430: System.Net.WebSockets.Client.dll => 82
	i64 u0x4d479f968a05e504, ; 431: System.Linq.Expressions.dll => 60
	i64 u0x4d55a010ffc4faff, ; 432: System.Private.Xml => 91
	i64 u0x4d5cbe77561c5b2e, ; 433: System.Web.dll => 157
	i64 u0x4d77512dbd86ee4c, ; 434: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 283
	i64 u0x4d7793536e79c309, ; 435: System.ServiceProcess => 135
	i64 u0x4d95fccc1f67c7ca, ; 436: System.Runtime.Loader.dll => 112
	i64 u0x4db014bf0ff1c9c1, ; 437: System.Linq.AsyncEnumerable => 59
	i64 u0x4dcf44c3c9b076a2, ; 438: it/Microsoft.Maui.Controls.resources.dll => 443
	i64 u0x4dd9247f1d2c3235, ; 439: Xamarin.AndroidX.Loader.dll => 323
	i64 u0x4df510084e2a0bae, ; 440: Microsoft.JSInterop => 249
	i64 u0x4e0118d7e6df6ed3, ; 441: lib-zh-Hans-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 401
	i64 u0x4e2aeee78e2c4a87, ; 442: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 330
	i64 u0x4e32f00cb0937401, ; 443: Mono.Android.Runtime => 174
	i64 u0x4e3369190c3dcd08, ; 444: Microsoft.Extensions.Identity.Stores => 237
	i64 u0x4e5eea4668ac2b18, ; 445: System.Text.Encoding.CodePages => 136
	i64 u0x4e84220084ab2d20, ; 446: cs/Microsoft.CodeAnalysis.CSharp.resources.dll => 377
	i64 u0x4ebd0c4b82c5eefc, ; 447: lib_System.Threading.Channels.dll.so => 143
	i64 u0x4ee8eaa9c9c1151a, ; 448: System.Globalization.Calendars => 40
	i64 u0x4f21ee6ef9eb527e, ; 449: ca/Microsoft.Maui.Controls.resources => 430
	i64 u0x4f395cbd2708b3c5, ; 450: ru/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 399
	i64 u0x4f7ed4233b906e51, ; 451: cs/Microsoft.CodeAnalysis.Workspaces.resources => 403
	i64 u0x4fd5f3ee53d0a4f0, ; 452: SQLitePCLRaw.lib.e_sqlite3.android => 262
	i64 u0x4fdc964ec1888e25, ; 453: lib_Microsoft.Extensions.Configuration.Binder.dll.so => 222
	i64 u0x5037f0be3c28c7a3, ; 454: lib_Microsoft.Maui.Controls.dll.so => 250
	i64 u0x50c3a29b21050d45, ; 455: System.Linq.Parallel.dll => 61
	i64 u0x5116b21580ae6eb0, ; 456: Microsoft.Extensions.Configuration.Binder.dll => 222
	i64 u0x5131bbe80989093f, ; 457: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 319
	i64 u0x516324a5050a7e3c, ; 458: System.Net.WebProxy => 81
	i64 u0x516d6f0b21a303de, ; 459: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 460: System.Drawing => 36
	i64 u0x5216f09c5c4c95c8, ; 461: Microsoft.AspNetCore.Authentication.Abstractions => 181
	i64 u0x5247c5c32a4140f0, ; 462: System.Resources.Reader => 101
	i64 u0x526bb15e3c386364, ; 463: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 316
	i64 u0x526ce79eb8e90527, ; 464: lib_System.Net.Primitives.dll.so => 72
	i64 u0x527068e11a04760b, ; 465: lib-pl-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 423
	i64 u0x527497f521875686, ; 466: Microsoft.AspNetCore.Http.Abstractions => 198
	i64 u0x52829f00b4467c38, ; 467: lib_System.Data.Common.dll.so => 22
	i64 u0x529ffe06f39ab8db, ; 468: Xamarin.AndroidX.Core => 294
	i64 u0x52ff996554dbf352, ; 469: Microsoft.Maui.Graphics => 254
	i64 u0x5324b9a9dedb24aa, ; 470: Microsoft.AspNetCore.Cryptography.Internal => 191
	i64 u0x533514f6711b299b, ; 471: ko/Microsoft.CodeAnalysis.CSharp.resources => 383
	i64 u0x535f7e40e8fef8af, ; 472: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 454
	i64 u0x53978aac584c666e, ; 473: lib_System.Security.Cryptography.Cng.dll.so => 123
	i64 u0x53a96d5c86c9e194, ; 474: System.Net.NetworkInformation => 70
	i64 u0x53be1038a61e8d44, ; 475: System.Runtime.InteropServices.RuntimeInformation.dll => 109
	i64 u0x53c3014b9437e684, ; 476: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 460
	i64 u0x5435e6f049e9bc37, ; 477: System.Security.Claims.dll => 121
	i64 u0x54795225dd1587af, ; 478: lib_System.Runtime.dll.so => 119
	i64 u0x547a34f14e5f6210, ; 479: Xamarin.AndroidX.Lifecycle.Common.dll => 308
	i64 u0x54a0124adceadbc7, ; 480: Microsoft.AspNetCore.DataProtection => 193
	i64 u0x54b851bc9b470503, ; 481: Xamarin.AndroidX.Navigation.Common.Android => 325
	i64 u0x54d75f85d6578cff, ; 482: lib-fr-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 380
	i64 u0x556e8b63b660ab8b, ; 483: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 309
	i64 u0x5588627c9a108ec9, ; 484: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 485: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55ddc2fdca573938, ; 486: cs/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 416
	i64 u0x55fa0c610fe93bb1, ; 487: lib_System.Security.Cryptography.OpenSsl.dll.so => 126
	i64 u0x56442b99bc64bb47, ; 488: System.Runtime.Serialization.Xml.dll => 117
	i64 u0x56a8b26e1aeae27b, ; 489: System.Threading.Tasks.Dataflow => 145
	i64 u0x56f932d61e93c07f, ; 490: System.Globalization.Extensions => 41
	i64 u0x57100d2f2e14b56d, ; 491: MudBlazor => 258
	i64 u0x571c5cfbec5ae8e2, ; 492: System.Private.Uri => 89
	i64 u0x5724fbe6b45b7f07, ; 493: lib-pt-BR-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 385
	i64 u0x57623b72b8f4cc3f, ; 494: ko/Microsoft.CodeAnalysis.Workspaces.resources.dll => 409
	i64 u0x576499c9f52fea31, ; 495: Xamarin.AndroidX.Annotation => 278
	i64 u0x578cd35c91d7b347, ; 496: lib_SQLitePCLRaw.core.dll.so => 261
	i64 u0x579a06fed6eec900, ; 497: System.Private.CoreLib.dll => 177
	i64 u0x57adda3c951abb33, ; 498: Microsoft.Extensions.Hosting.Abstractions.dll => 235
	i64 u0x57c542c14049b66d, ; 499: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 500: System.Threading.Timer => 151
	i64 u0x582e758eda676c85, ; 501: zh-Hant/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 402
	i64 u0x584ac38e21d2fde1, ; 502: Microsoft.Extensions.Configuration.Binder => 222
	i64 u0x58601b2dda4a27b9, ; 503: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 444
	i64 u0x58688d9af496b168, ; 504: Microsoft.Extensions.DependencyInjection.dll => 225
	i64 u0x587f59a16b329d9c, ; 505: Microsoft.Net.Http.Headers => 255
	i64 u0x588c167a79db6bfb, ; 506: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 354
	i64 u0x58ef0576630aa114, ; 507: fr/Microsoft.CodeAnalysis.CSharp.resources => 380
	i64 u0x5906028ae5151104, ; 508: Xamarin.AndroidX.Activity.Ktx => 277
	i64 u0x595a356d23e8da9a, ; 509: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x597d58a5c4373cea, ; 510: System.Composition.Runtime.dll => 268
	i64 u0x59c270386bf40142, ; 511: Microsoft.AspNetCore.Hosting.Server.Abstractions => 196
	i64 u0x59f9e60b9475085f, ; 512: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 279
	i64 u0x5a745f5101a75527, ; 513: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a89a886ae30258d, ; 514: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 293
	i64 u0x5a8f6699f4a1caa9, ; 515: lib_System.Threading.dll.so => 152
	i64 u0x5ae9cd33b15841bf, ; 516: System.ComponentModel => 18
	i64 u0x5b54391bdc6fcfe6, ; 517: System.Private.DataContractSerialization => 88
	i64 u0x5b5f0e240a06a2a2, ; 518: da/Microsoft.Maui.Controls.resources.dll => 432
	i64 u0x5b8109e8e14c5e3e, ; 519: System.Globalization.Extensions.dll => 41
	i64 u0x5ba29be6a44b0881, ; 520: Abc.Shared => 468
	i64 u0x5ba42c66b858352a, ; 521: ko/Microsoft.CodeAnalysis.Workspaces.resources => 409
	i64 u0x5bb93c3ef9525c89, ; 522: es/Microsoft.CodeAnalysis.resources => 366
	i64 u0x5bddd04d72a9e350, ; 523: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 312
	i64 u0x5bdf16b09da116ab, ; 524: Xamarin.AndroidX.Collection => 287
	i64 u0x5be34cb3cc2ff949, ; 525: tr/Microsoft.CodeAnalysis.CSharp.resources => 387
	i64 u0x5c019d5266093159, ; 526: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 317
	i64 u0x5c30a4a35f9cc8c4, ; 527: lib_System.Reflection.Extensions.dll.so => 96
	i64 u0x5c393624b8176517, ; 528: lib_Microsoft.Extensions.Logging.dll.so => 240
	i64 u0x5c53c29f5073b0c9, ; 529: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c6724284a5e7317, ; 530: lib-tr-Microsoft.CodeAnalysis.resources.dll.so => 374
	i64 u0x5c87463c575c7616, ; 531: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5d0233e3983e2c1c, ; 532: zh-Hans/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 401
	i64 u0x5d0a4a29b02d9d3c, ; 533: System.Net.WebHeaderCollection.dll => 80
	i64 u0x5d25ef991dd9a85c, ; 534: Microsoft.AspNetCore.Components.WebView.Maui.dll => 190
	i64 u0x5d40c9b15181641f, ; 535: lib_Xamarin.AndroidX.Emoji2.dll.so => 302
	i64 u0x5d6ca10d35e9485b, ; 536: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 290
	i64 u0x5d7ec76c1c703055, ; 537: System.Threading.Tasks.Parallel => 147
	i64 u0x5db0cbbd1028510e, ; 538: lib_System.Runtime.InteropServices.dll.so => 110
	i64 u0x5db30905d3e5013b, ; 539: Xamarin.AndroidX.Collection.Jvm.dll => 288
	i64 u0x5e467bc8f09ad026, ; 540: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 541: System.Runtime.Handles.dll => 107
	i64 u0x5ea92fdb19ec8c4c, ; 542: System.Text.Encodings.Web.dll => 139
	i64 u0x5eb8046dd40e9ac3, ; 543: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 544: System.Security.Cryptography.Csp.dll => 124
	i64 u0x5eee1376d94c7f5e, ; 545: System.Net.HttpListener.dll => 67
	i64 u0x5f36ccf5c6a57e24, ; 546: System.Xml.ReaderWriter.dll => 160
	i64 u0x5f4294b9b63cb842, ; 547: System.Data.Common => 22
	i64 u0x5f7399e166075632, ; 548: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 262
	i64 u0x5f9a2d823f664957, ; 549: lib-el-Microsoft.Maui.Controls.resources.dll.so => 434
	i64 u0x5fa6da9c3cd8142a, ; 550: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 362
	i64 u0x5fac98e0b37a5b9d, ; 551: System.Runtime.CompilerServices.Unsafe.dll => 104
	i64 u0x5fd02402d97cdaab, ; 552: lib_Microsoft.Extensions.ObjectPool.dll.so => 243
	i64 u0x5fed9a6eec6702f2, ; 553: ja/Microsoft.CodeAnalysis.Workspaces.resources.dll => 408
	i64 u0x609f4b7b63d802d4, ; 554: lib_Microsoft.Extensions.DependencyInjection.dll.so => 225
	i64 u0x60cd4e33d7e60134, ; 555: Xamarin.KotlinX.Coroutines.Core.Jvm => 361
	i64 u0x60f62d786afcf130, ; 556: System.Memory => 64
	i64 u0x61bb78c89f867353, ; 557: System.IO => 58
	i64 u0x61be8d1299194243, ; 558: Microsoft.Maui.Controls.Xaml => 251
	i64 u0x61d2cba29557038f, ; 559: de/Microsoft.Maui.Controls.resources => 433
	i64 u0x61d88f399afb2f45, ; 560: lib_System.Runtime.Loader.dll.so => 112
	i64 u0x61ed565823caa94a, ; 561: lib_Abc.Domain.dll.so => 465
	i64 u0x6217a46f11608eff, ; 562: de/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 391
	i64 u0x622eef6f9e59068d, ; 563: System.Private.CoreLib => 177
	i64 u0x627f10a4113d036d, ; 564: lib-zh-Hant-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 402
	i64 u0x62ba79aaaf1f7822, ; 565: Microsoft.CodeAnalysis.ExternalAccess.RazorCompiler.dll => 210
	i64 u0x62c75de2b221b541, ; 566: lib-tr-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 400
	i64 u0x639fb99a7bef11de, ; 567: Xamarin.AndroidX.Navigation.Runtime.Android.dll => 328
	i64 u0x63cdbd66ac39bb46, ; 568: lib_Microsoft.VisualStudio.DesignTools.XamlTapContract.dll.so => 472
	i64 u0x63d5e3aa4ef9b931, ; 569: Xamarin.KotlinX.Coroutines.Android.dll => 359
	i64 u0x63f1f6883c1e23c2, ; 570: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 571: Xamarin.Google.Android.Material.dll => 351
	i64 u0x640e3b14dbd325c2, ; 572: System.Security.Cryptography.Algorithms.dll => 122
	i64 u0x643e455ddc2c9a4f, ; 573: zh-Hant/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 428
	i64 u0x64587004560099b9, ; 574: System.Reflection => 100
	i64 u0x64b1529a438a3c45, ; 575: lib_System.Runtime.Handles.dll.so => 107
	i64 u0x64b61dd9da8a4d57, ; 576: System.Net.ServerSentEvents.dll => 76
	i64 u0x653fd4be54431158, ; 577: it/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 420
	i64 u0x6565fba2cd8f235b, ; 578: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 320
	i64 u0x659c645a2136aadf, ; 579: pt-BR/Microsoft.CodeAnalysis.Workspaces.resources => 411
	i64 u0x65d8ddec9a3de89e, ; 580: ru/Microsoft.CodeAnalysis.resources => 373
	i64 u0x65ecac39144dd3cc, ; 581: Microsoft.Maui.Controls.dll => 250
	i64 u0x65ece51227bfa724, ; 582: lib_System.Runtime.Numerics.dll.so => 113
	i64 u0x661722438787b57f, ; 583: Xamarin.AndroidX.Annotation.Jvm.dll => 280
	i64 u0x6679b2337ee6b22a, ; 584: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x667c66a03dd97d40, ; 585: System.Linq.AsyncEnumerable.dll => 59
	i64 u0x6692e924eade1b29, ; 586: lib_System.Console.dll.so => 20
	i64 u0x66a4e5c6a3fb0bae, ; 587: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 319
	i64 u0x66d13304ce1a3efa, ; 588: Xamarin.AndroidX.CursorAdapter => 297
	i64 u0x674303f65d8fad6f, ; 589: lib_System.Net.Quic.dll.so => 73
	i64 u0x67488fd20632118d, ; 590: lib-es-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 405
	i64 u0x6756ca4cad62e9d6, ; 591: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 292
	i64 u0x67c0802770244408, ; 592: System.Windows.dll => 158
	i64 u0x68100b69286e27cd, ; 593: lib_System.Formats.Tar.dll.so => 39
	i64 u0x68558ec653afa616, ; 594: lib-da-Microsoft.Maui.Controls.resources.dll.so => 432
	i64 u0x6857d56b8e8b4bb6, ; 595: lib_Microsoft.AspNetCore.Metadata.dll.so => 203
	i64 u0x6872ec7a2e36b1ac, ; 596: System.Drawing.Primitives.dll => 35
	i64 u0x68bcc5f7a8af5422, ; 597: Microsoft.EntityFrameworkCore.Design => 215
	i64 u0x68fbbbe2eb455198, ; 598: System.Formats.Asn1 => 38
	i64 u0x69063fc0ba8e6bdd, ; 599: he/Microsoft.Maui.Controls.resources.dll => 438
	i64 u0x695bc7b274a71abf, ; 600: System.Composition.Runtime => 268
	i64 u0x699dffb2427a2d71, ; 601: SQLitePCLRaw.lib.e_sqlite3.android.dll => 262
	i64 u0x69a793cbf1ac3021, ; 602: fr/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 419
	i64 u0x69c43767b6624bb2, ; 603: pl/Microsoft.CodeAnalysis.CSharp.resources => 384
	i64 u0x6a4d7577b2317255, ; 604: System.Runtime.InteropServices.dll => 110
	i64 u0x6abfbfb2796f4e84, ; 605: Microsoft.CodeAnalysis.CSharp => 207
	i64 u0x6ace3b74b15ee4a4, ; 606: nb/Microsoft.Maui.Controls.resources => 447
	i64 u0x6afcedb171067e2b, ; 607: System.Core.dll => 21
	i64 u0x6b8b00fad19364b6, ; 608: lib-ru-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 412
	i64 u0x6bef98e124147c24, ; 609: Xamarin.Jetbrains.Annotations => 356
	i64 u0x6c2a741a82a7c853, ; 610: lib-pt-BR-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 411
	i64 u0x6c46bd19605219e3, ; 611: Microsoft.Extensions.Localization => 238
	i64 u0x6c73ea6034e1b5ec, ; 612: tr/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 426
	i64 u0x6ce874bff138ce2b, ; 613: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 318
	i64 u0x6d12bfaa99c72b1f, ; 614: lib_Microsoft.Maui.Graphics.dll.so => 254
	i64 u0x6d70755158ca866e, ; 615: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d79993361e10ef2, ; 616: Microsoft.Extensions.Primitives => 246
	i64 u0x6d7eeca99577fc8b, ; 617: lib_System.Net.WebProxy.dll.so => 81
	i64 u0x6d8515b19946b6a2, ; 618: System.Net.WebProxy.dll => 81
	i64 u0x6d86d56b84c8eb71, ; 619: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 297
	i64 u0x6d9bea6b3e895cf7, ; 620: Microsoft.Extensions.Primitives.dll => 246
	i64 u0x6de85c8851699e79, ; 621: Microsoft.CodeAnalysis.CSharp.Workspaces.dll => 208
	i64 u0x6dfdf8ba2a1e00cd, ; 622: Abc.Data.dll => 464
	i64 u0x6e25a02c3833319a, ; 623: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 326
	i64 u0x6e2fb2ace98ab808, ; 624: zh-Hant/Microsoft.CodeAnalysis.CSharp.resources => 389
	i64 u0x6e79c6bd8627412a, ; 625: Xamarin.AndroidX.SavedState.SavedState.Ktx => 335
	i64 u0x6e838d9a2a6f6c9e, ; 626: lib_System.ValueTuple.dll.so => 155
	i64 u0x6e9965ce1095e60a, ; 627: lib_System.Core.dll.so => 21
	i64 u0x6fd2265da78b93a4, ; 628: lib_Microsoft.Maui.dll.so => 252
	i64 u0x6fdfc7de82c33008, ; 629: cs/Microsoft.Maui.Controls.resources => 431
	i64 u0x6ffc4967cc47ba57, ; 630: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 631: System.IO.FileSystem.dll => 51
	i64 u0x7078c940a89ab2ee, ; 632: ja/Microsoft.CodeAnalysis.CSharp.resources => 382
	i64 u0x70d67fb826a6921f, ; 633: Microsoft.Extensions.Validation.dll => 247
	i64 u0x70e99f48c05cb921, ; 634: tr/Microsoft.Maui.Controls.resources.dll => 457
	i64 u0x70fd3deda22442d2, ; 635: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 447
	i64 u0x71485e7ffdb4b958, ; 636: System.Reflection.Extensions => 96
	i64 u0x7162a2fce67a945f, ; 637: lib_Xamarin.Android.Glide.Annotations.dll.so => 273
	i64 u0x717530326f808838, ; 638: lib_Microsoft.Extensions.Diagnostics.Abstractions.dll.so => 229
	i64 u0x719e2fe7144bef40, ; 639: lib-fr-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 406
	i64 u0x71a495ea3761dde8, ; 640: lib-it-Microsoft.Maui.Controls.resources.dll.so => 443
	i64 u0x71ad672adbe48f35, ; 641: System.ComponentModel.Primitives.dll => 16
	i64 u0x71bc142d620e986a, ; 642: lib_System.Security.Cryptography.Pkcs.dll.so => 270
	i64 u0x720f102581a4a5c8, ; 643: Xamarin.AndroidX.Core.ViewTree => 296
	i64 u0x725f5a9e82a45c81, ; 644: System.Security.Cryptography.Encoding => 125
	i64 u0x72b1fb4109e08d7b, ; 645: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 440
	i64 u0x72e0300099accce1, ; 646: System.Xml.XPath.XDocument => 163
	i64 u0x730bfb248998f67a, ; 647: System.IO.Compression.ZipFile => 45
	i64 u0x732b2d67b9e5c47b, ; 648: Xamarin.Google.ErrorProne.Annotations.dll => 354
	i64 u0x734b76fdc0dc05bb, ; 649: lib_GoogleGson.dll.so => 178
	i64 u0x73a6be34e822f9d1, ; 650: lib_System.Runtime.Serialization.dll.so => 118
	i64 u0x73e4ce94e2eb6ffc, ; 651: lib_System.Memory.dll.so => 64
	i64 u0x73f2645914262879, ; 652: lib_Microsoft.EntityFrameworkCore.Sqlite.dll.so => 217
	i64 u0x743a1eccf080489a, ; 653: WindowsBase.dll => 169
	i64 u0x7465c42afc9ef57e, ; 654: Microsoft.AspNetCore.Identity.EntityFrameworkCore => 202
	i64 u0x746cf89b511b4d40, ; 655: lib_Microsoft.Extensions.Diagnostics.dll.so => 228
	i64 u0x755a91767330b3d4, ; 656: lib_Microsoft.Extensions.Configuration.dll.so => 220
	i64 u0x75c326eb821b85c4, ; 657: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76012e7334db86e5, ; 658: lib_Xamarin.AndroidX.SavedState.dll.so => 333
	i64 u0x769410fc0a876efc, ; 659: tr/Microsoft.CodeAnalysis.Workspaces.resources => 413
	i64 u0x76ca07b878f44da0, ; 660: System.Runtime.Numerics.dll => 113
	i64 u0x7736c8a96e51a061, ; 661: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 280
	i64 u0x778a805e625329ef, ; 662: System.Linq.Parallel => 61
	i64 u0x779f67ad3b8efbd5, ; 663: Microsoft.Extensions.Configuration.Json.dll => 224
	i64 u0x77d9074d8f33a303, ; 664: lib_System.Net.ServerSentEvents.dll.so => 76
	i64 u0x77f8a4acc2fdc449, ; 665: System.Security.Cryptography.Cng.dll => 123
	i64 u0x780bc73597a503a9, ; 666: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 446
	i64 u0x782c5d8eb99ff201, ; 667: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x783606d1e53e7a1a, ; 668: th/Microsoft.Maui.Controls.resources.dll => 456
	i64 u0x7888c8518f32343b, ; 669: tr/Microsoft.CodeAnalysis.resources.dll => 374
	i64 u0x78a45e51311409b6, ; 670: Xamarin.AndroidX.Fragment.dll => 305
	i64 u0x78ed4ab8f9d800a1, ; 671: Xamarin.AndroidX.Lifecycle.ViewModel => 318
	i64 u0x7996e32deaf72986, ; 672: Microsoft.CodeAnalysis.CSharp.dll => 207
	i64 u0x7a5207a7c82d30b4, ; 673: lib_Xamarin.JSpecify.dll.so => 357
	i64 u0x7a71889545dcdb00, ; 674: lib_Microsoft.AspNetCore.Components.WebView.dll.so => 189
	i64 u0x7a7e7eddf79c5d26, ; 675: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 318
	i64 u0x7a9a57d43b0845fa, ; 676: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 677: Xamarin.AndroidX.Collection.dll => 287
	i64 u0x7adb8da2ac89b647, ; 678: fi/Microsoft.Maui.Controls.resources.dll => 436
	i64 u0x7b13d9eaa944ade8, ; 679: Xamarin.AndroidX.DynamicAnimation.dll => 301
	i64 u0x7b150145c0a9058c, ; 680: Microsoft.Data.Sqlite => 212
	i64 u0x7bef86a4335c4870, ; 681: System.ComponentModel.TypeConverter => 17
	i64 u0x7c0820144cd34d6a, ; 682: sk/Microsoft.Maui.Controls.resources.dll => 454
	i64 u0x7c2a0bd1e0f988fc, ; 683: lib-de-Microsoft.Maui.Controls.resources.dll.so => 433
	i64 u0x7c41d387501568ba, ; 684: System.Net.WebClient.dll => 79
	i64 u0x7c482cd79bd24b13, ; 685: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 291
	i64 u0x7c4867f3cb880d2f, ; 686: Microsoft.AspNetCore.Metadata => 203
	i64 u0x7c60acf6404e96b6, ; 687: Xamarin.AndroidX.Navigation.Common.Android.dll => 325
	i64 u0x7cb684ea4e7f9d67, ; 688: ja/Microsoft.CodeAnalysis.Workspaces.resources => 408
	i64 u0x7cd2ec8eaf5241cd, ; 689: System.Security.dll => 133
	i64 u0x7cf9ae50dd350622, ; 690: Xamarin.Jetbrains.Annotations.dll => 356
	i64 u0x7d649b75d580bb42, ; 691: ms/Microsoft.Maui.Controls.resources.dll => 446
	i64 u0x7d8b5821548f89e7, ; 692: Microsoft.AspNetCore.Components.Forms => 186
	i64 u0x7d8ee2bdc8e3aad1, ; 693: System.Numerics.Vectors => 85
	i64 u0x7df5df8db8eaa6ac, ; 694: Microsoft.Extensions.Logging.Debug => 242
	i64 u0x7df7a66da1b3f2a4, ; 695: tr/Microsoft.CodeAnalysis.Workspaces.resources.dll => 413
	i64 u0x7dfc3d6d9d8d7b70, ; 696: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 697: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 698: lib_System.Security.Claims.dll.so => 121
	i64 u0x7e4084a672f9c30e, ; 699: lib_System.Security.Cryptography.Xml.dll.so => 271
	i64 u0x7e4465b3f78ad8d0, ; 700: Xamarin.KotlinX.Serialization.Core.dll => 362
	i64 u0x7e571cad5915e6c3, ; 701: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 313
	i64 u0x7e6ac99e4e8df72f, ; 702: System.IO.Hashing => 176
	i64 u0x7e6b1ca712437d7d, ; 703: Xamarin.AndroidX.Emoji2.ViewsHelper => 303
	i64 u0x7e8491dff6498f33, ; 704: zh-Hans/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 401
	i64 u0x7e946809d6008ef2, ; 705: lib_System.ObjectModel.dll.so => 87
	i64 u0x7ea0077fd2273d61, ; 706: Humanizer.dll => 179
	i64 u0x7ea0272c1b4a9635, ; 707: lib_Xamarin.Android.Glide.dll.so => 272
	i64 u0x7eb41653851a6957, ; 708: it/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 420
	i64 u0x7ebe6126501e1198, ; 709: Microsoft.AspNetCore.Cryptography.KeyDerivation.dll => 192
	i64 u0x7ecc13347c8fd849, ; 710: lib_System.ComponentModel.dll.so => 18
	i64 u0x7eff369f2e01cf95, ; 711: Microsoft.AspNetCore.Http.Features => 200
	i64 u0x7f00ddd9b9ca5a13, ; 712: Xamarin.AndroidX.ViewPager.dll => 346
	i64 u0x7f1f6405e1619e41, ; 713: lib_Microsoft.VisualStudio.SolutionPersistence.dll.so => 256
	i64 u0x7f9351cd44b1273f, ; 714: Microsoft.Extensions.Configuration.Abstractions => 221
	i64 u0x7fbd557c99b3ce6f, ; 715: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 311
	i64 u0x8076a9a44a2ca331, ; 716: System.Net.Quic => 73
	i64 u0x8099c2f51a031e9e, ; 717: lib-de-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 404
	i64 u0x80b7e726b0280681, ; 718: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 470
	i64 u0x80da183a87731838, ; 719: System.Reflection.Metadata => 97
	i64 u0x80ee53ea610b3f78, ; 720: zh-Hans/Microsoft.CodeAnalysis.CSharp.resources => 388
	i64 u0x80fa55b6d1b0be99, ; 721: SQLitePCLRaw.provider.e_sqlite3 => 263
	i64 u0x8101a73bd4533440, ; 722: Microsoft.AspNetCore.Components.Web => 188
	i64 u0x812c069d5cdecc17, ; 723: System.dll => 168
	i64 u0x81381be520a60adb, ; 724: Xamarin.AndroidX.Interpolator.dll => 307
	i64 u0x8148a1fb34fceb7c, ; 725: Microsoft.Extensions.Localization.Abstractions => 239
	i64 u0x81657cec2b31e8aa, ; 726: System.Net => 84
	i64 u0x81ab745f6c0f5ce6, ; 727: zh-Hant/Microsoft.Maui.Controls.resources => 462
	i64 u0x81b10b836ad90983, ; 728: pt-BR/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 424
	i64 u0x822aa49008112ebe, ; 729: Microsoft.Extensions.ObjectPool => 243
	i64 u0x82362c58ad0a8ab7, ; 730: Abc.Jobs.dll => 467
	i64 u0x82772feb100c9738, ; 731: it/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 394
	i64 u0x8277f2be6b5ce05f, ; 732: Xamarin.AndroidX.AppCompat => 281
	i64 u0x828f06563b30bc50, ; 733: lib_Xamarin.AndroidX.CardView.dll.so => 286
	i64 u0x82b399cb01b531c4, ; 734: lib_System.Web.dll.so => 157
	i64 u0x82df8f5532a10c59, ; 735: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 736: lib_System.Transactions.dll.so => 154
	i64 u0x82f6403342e12049, ; 737: uk/Microsoft.Maui.Controls.resources => 458
	i64 u0x83c14ba66c8e2b8c, ; 738: zh-Hans/Microsoft.Maui.Controls.resources => 461
	i64 u0x83de69860da6cbdd, ; 739: Microsoft.Extensions.FileProviders.Composite => 231
	i64 u0x846ce984efea52c7, ; 740: System.Threading.Tasks.Parallel.dll => 147
	i64 u0x84ae73148a4557d2, ; 741: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 742: System.Runtime.Serialization.Json.dll => 115
	i64 u0x84cd5cdec0f54bcc, ; 743: lib_Microsoft.EntityFrameworkCore.Relational.dll.so => 216
	i64 u0x84f20950c4c7164b, ; 744: Microsoft.AspNetCore.Http => 197
	i64 u0x850c5ba0b57ce8e7, ; 745: lib_Xamarin.AndroidX.Collection.dll.so => 287
	i64 u0x851d02edd334b044, ; 746: Xamarin.AndroidX.VectorDrawable => 343
	i64 u0x855713009ceaac4f, ; 747: System.Composition.TypedParts => 269
	i64 u0x85c919db62150978, ; 748: Xamarin.AndroidX.Transition.dll => 342
	i64 u0x8662aaeb94fef37f, ; 749: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86a909228dc7657b, ; 750: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 462
	i64 u0x86b3e00c36b84509, ; 751: Microsoft.Extensions.Configuration.dll => 220
	i64 u0x86b62cb077ec4fd7, ; 752: System.Runtime.Serialization.Xml => 117
	i64 u0x8704193f462e892e, ; 753: lib_Microsoft.Extensions.FileSystemGlobbing.dll.so => 234
	i64 u0x8706ffb12bf3f53d, ; 754: Xamarin.AndroidX.Annotation.Experimental => 279
	i64 u0x872a5b14c18d328c, ; 755: System.ComponentModel.DataAnnotations => 14
	i64 u0x872fb9615bc2dff0, ; 756: Xamarin.Android.Glide.Annotations.dll => 273
	i64 u0x87c4b8a492b176ad, ; 757: Microsoft.EntityFrameworkCore.Abstractions => 214
	i64 u0x87c69b87d9283884, ; 758: lib_System.Threading.Thread.dll.so => 149
	i64 u0x87d6cb5c641c5f07, ; 759: Microsoft.AspNetCore.Http.Abstractions.dll => 198
	i64 u0x87f6569b25707834, ; 760: System.IO.Compression.Brotli.dll => 43
	i64 u0x8842b3a5d2d3fb36, ; 761: Microsoft.Maui.Essentials => 253
	i64 u0x88826e51a5d4a3d0, ; 762: de/Microsoft.CodeAnalysis.resources.dll => 365
	i64 u0x88926583efe7ee86, ; 763: Xamarin.AndroidX.Activity.Ktx.dll => 277
	i64 u0x88ba6bc4f7762b03, ; 764: lib_System.Reflection.dll.so => 100
	i64 u0x88bda98e0cffb7a9, ; 765: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 361
	i64 u0x8930322c7bd8f768, ; 766: netstandard => 171
	i64 u0x897a606c9e39c75f, ; 767: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x898a5c6bc9e47ec1, ; 768: lib_Xamarin.AndroidX.SavedState.SavedState.Android.dll.so => 334
	i64 u0x898a9b4e63f2c138, ; 769: lib_Microsoft.AspNetCore.Identity.dll.so => 201
	i64 u0x89911a22005b92b7, ; 770: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89a43fbe4c711c49, ; 771: lib_Microsoft.AspNetCore.Components.QuickGrid.dll.so => 187
	i64 u0x89c5188089ec2cd5, ; 772: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 109
	i64 u0x8a0b6f586fccda8a, ; 773: lib_Microsoft.AspNetCore.Http.Extensions.dll.so => 199
	i64 u0x8a14bf4400a024af, ; 774: lib_Microsoft.AspNetCore.Http.Features.dll.so => 200
	i64 u0x8a19e3dc71b34b2c, ; 775: System.Reflection.TypeExtensions.dll => 99
	i64 u0x8a399a706fcbce4b, ; 776: Microsoft.Extensions.Caching.Abstractions => 218
	i64 u0x8a57a9356f6abd4a, ; 777: lib-es-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 392
	i64 u0x8ad229ea26432ee2, ; 778: Xamarin.AndroidX.Loader => 323
	i64 u0x8b3acf8ee0c6f465, ; 779: lib-ja-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 421
	i64 u0x8b4ff5d0fdd5faa1, ; 780: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b51de273dac37c2, ; 781: ru/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 425
	i64 u0x8b523f8a283733d8, ; 782: ru/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 399
	i64 u0x8b541d476eb3774c, ; 783: System.Security.Principal.Windows => 130
	i64 u0x8b8d01333a96d0b5, ; 784: System.Diagnostics.Process.dll => 29
	i64 u0x8b9ceca7acae3451, ; 785: lib-he-Microsoft.Maui.Controls.resources.dll.so => 438
	i64 u0x8bb8206f414c7c3b, ; 786: Microsoft.AspNetCore.Authentication.Core.dll => 183
	i64 u0x8c39b02ed181787b, ; 787: pt-BR/Microsoft.CodeAnalysis.CSharp.resources => 385
	i64 u0x8c575135aa1ccef4, ; 788: Microsoft.Extensions.FileProviders.Abstractions => 230
	i64 u0x8cb8f612b633affb, ; 789: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 335
	i64 u0x8cdfdb4ce85fb925, ; 790: lib_System.Security.Principal.Windows.dll.so => 130
	i64 u0x8cdfe7b8f4caa426, ; 791: System.IO.Compression.FileSystem => 44
	i64 u0x8d0f420977c2c1c7, ; 792: Xamarin.AndroidX.CursorAdapter.dll => 297
	i64 u0x8d52a25632e81824, ; 793: Microsoft.EntityFrameworkCore.Sqlite.dll => 217
	i64 u0x8d52f7ea2796c531, ; 794: Xamarin.AndroidX.Emoji2.dll => 302
	i64 u0x8d7b8ab4b3310ead, ; 795: System.Threading => 152
	i64 u0x8da188285aadfe8e, ; 796: System.Collections.Concurrent => 8
	i64 u0x8dce248c34c54ef3, ; 797: lib_Microsoft.AspNetCore.Hosting.Abstractions.dll.so => 195
	i64 u0x8e8f269ad1e1ff94, ; 798: lib_Xamarin.AndroidX.Tracing.Tracing.Android.dll.so => 341
	i64 u0x8ec6e06a61c1baeb, ; 799: lib_Newtonsoft.Json.dll.so => 259
	i64 u0x8ed5e23fbc329c35, ; 800: cs/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 390
	i64 u0x8ed807bfe9858dfc, ; 801: Xamarin.AndroidX.Navigation.Common => 324
	i64 u0x8ee08b8194a30f48, ; 802: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 439
	i64 u0x8ef7601039857a44, ; 803: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 452
	i64 u0x8ef9414937d93a0a, ; 804: SQLitePCLRaw.core.dll => 261
	i64 u0x8f32c6f611f6ffab, ; 805: pt/Microsoft.Maui.Controls.resources.dll => 451
	i64 u0x8f44b45eb046bbd1, ; 806: System.ServiceModel.Web.dll => 134
	i64 u0x8f8829d21c8985a4, ; 807: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 450
	i64 u0x8f8b0f07edd7b3b6, ; 808: cs/Microsoft.CodeAnalysis.resources.dll => 364
	i64 u0x8fa404e6277d0694, ; 809: zh-Hans/Microsoft.CodeAnalysis.CSharp.resources.dll => 388
	i64 u0x8fbf5b0114c6dcef, ; 810: System.Globalization.dll => 42
	i64 u0x8fcc8c2a81f3d9e7, ; 811: Xamarin.KotlinX.Serialization.Core => 362
	i64 u0x8fd27d934d7b3a55, ; 812: SQLitePCLRaw.core => 261
	i64 u0x90263f8448b8f572, ; 813: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 814: _Microsoft.Android.Resource.Designer => 473
	i64 u0x90393bd4865292f3, ; 815: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 816: System.Threading.Tasks.Extensions.dll => 146
	i64 u0x90634f86c5ebe2b5, ; 817: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 319
	i64 u0x907b636704ad79ef, ; 818: lib_Microsoft.Maui.Controls.Xaml.dll.so => 251
	i64 u0x90e9efbfd68593e0, ; 819: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 310
	i64 u0x90f95fc914407a17, ; 820: lib-pl-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 384
	i64 u0x91418dc638b29e68, ; 821: lib_Xamarin.AndroidX.CustomView.dll.so => 298
	i64 u0x914647982e998267, ; 822: Microsoft.Extensions.Configuration.Json => 224
	i64 u0x9157bd523cd7ed36, ; 823: lib_System.Text.Json.dll.so => 140
	i64 u0x91871232ff25d47b, ; 824: cs/Microsoft.CodeAnalysis.Workspaces.resources.dll => 403
	i64 u0x91a74f07b30d37e2, ; 825: System.Linq.dll => 63
	i64 u0x91cb86ea3b17111d, ; 826: System.ServiceModel.Web => 134
	i64 u0x91fa41a87223399f, ; 827: ca/Microsoft.Maui.Controls.resources.dll => 430
	i64 u0x92054e486c0c7ea7, ; 828: System.IO.FileSystem.DriveInfo => 48
	i64 u0x92263da4b094eef5, ; 829: lib-cs-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 403
	i64 u0x926c3cf189fe2e18, ; 830: zh-Hans/Microsoft.CodeAnalysis.resources.dll => 375
	i64 u0x928614058c40c4cd, ; 831: lib_System.Xml.XPath.XDocument.dll.so => 163
	i64 u0x92b138fffca2b01e, ; 832: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 284
	i64 u0x92ddbdd12f196bab, ; 833: Abc.Infra.dll => 466
	i64 u0x92dfc2bfc6c6a888, ; 834: Xamarin.AndroidX.Lifecycle.LiveData => 310
	i64 u0x9315bb05aa1a03d5, ; 835: de/Microsoft.CodeAnalysis.Workspaces.resources.dll => 404
	i64 u0x933da2c779423d68, ; 836: Xamarin.Android.Glide.Annotations => 273
	i64 u0x9388aad9b7ae40ce, ; 837: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 308
	i64 u0x93ba953181e66fd2, ; 838: lib-ru-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 386
	i64 u0x93cfa73ab28d6e35, ; 839: ms/Microsoft.Maui.Controls.resources => 446
	i64 u0x941c00d21e5c0679, ; 840: lib_Xamarin.AndroidX.Transition.dll.so => 342
	i64 u0x944077d8ca3c6580, ; 841: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 842: System.Xml => 167
	i64 u0x94bbeab0d4764588, ; 843: System.IO.Hashing.dll => 176
	i64 u0x94c8990839c4bdb1, ; 844: lib_Xamarin.AndroidX.Interpolator.dll.so => 307
	i64 u0x95b1b6bca39c83f0, ; 845: MudBlazor.dll => 258
	i64 u0x95d11513bb9fe3f3, ; 846: Abc.Jobs => 467
	i64 u0x967fc325e09bfa8c, ; 847: es/Microsoft.Maui.Controls.resources => 435
	i64 u0x9686161486d34b81, ; 848: lib_Xamarin.AndroidX.ExifInterface.dll.so => 304
	i64 u0x96ae8122ac67b30e, ; 849: zh-Hant/Microsoft.CodeAnalysis.Workspaces.resources.dll => 415
	i64 u0x96f01cc18829cc2a, ; 850: System.Composition.Hosting.dll => 267
	i64 u0x9732d8dbddea3d9a, ; 851: id/Microsoft.Maui.Controls.resources => 442
	i64 u0x978be80e5210d31b, ; 852: Microsoft.Maui.Graphics.dll => 254
	i64 u0x97b8c771ea3e4220, ; 853: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 854: System.Collections.Concurrent.dll => 8
	i64 u0x98270c46908e26f7, ; 855: zh-Hant/Microsoft.CodeAnalysis.CSharp.resources.dll => 389
	i64 u0x984184e3c70d4419, ; 856: GoogleGson => 178
	i64 u0x9843944103683dd3, ; 857: Xamarin.AndroidX.Core.Core.Ktx => 295
	i64 u0x98b05cc81e6f333c, ; 858: Xamarin.AndroidX.SavedState.SavedState.Android.dll => 334
	i64 u0x98d720cc4597562c, ; 859: System.Security.Cryptography.OpenSsl => 126
	i64 u0x991d510397f92d9d, ; 860: System.Linq.Expressions => 60
	i64 u0x996ceeb8a3da3d67, ; 861: System.Threading.Overlapped.dll => 144
	i64 u0x99a00ca5270c6878, ; 862: Xamarin.AndroidX.Navigation.Runtime => 327
	i64 u0x99a891b860c3d03b, ; 863: lib-ko-Microsoft.CodeAnalysis.resources.dll.so => 370
	i64 u0x99cdc6d1f2d3a72f, ; 864: ko/Microsoft.Maui.Controls.resources.dll => 445
	i64 u0x9a01b1da98b6ee10, ; 865: Xamarin.AndroidX.Lifecycle.Runtime.dll => 314
	i64 u0x9a102e560c6efe86, ; 866: lib-pt-BR-Microsoft.CodeAnalysis.resources.dll.so => 372
	i64 u0x9a1d5006e4ce0b3a, ; 867: pl/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 397
	i64 u0x9a5ccc274fd6e6ee, ; 868: Jsr305Binding.dll => 352
	i64 u0x9a8a0f07d63b7637, ; 869: ja/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 421
	i64 u0x9ae6940b11c02876, ; 870: lib_Xamarin.AndroidX.Window.dll.so => 348
	i64 u0x9b211a749105beac, ; 871: System.Transactions.Local => 153
	i64 u0x9b8734714671022d, ; 872: System.Threading.Tasks.Dataflow.dll => 145
	i64 u0x9ba8c32873c681c1, ; 873: it/Microsoft.CodeAnalysis.CSharp.resources.dll => 381
	i64 u0x9bc6aea27fbf034f, ; 874: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 360
	i64 u0x9be4124ffc84e7ee, ; 875: pl/Microsoft.CodeAnalysis.resources.dll => 371
	i64 u0x9bfc637cbff3a4ec, ; 876: lib-ru-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 399
	i64 u0x9c244ac7cda32d26, ; 877: System.Security.Cryptography.X509Certificates.dll => 128
	i64 u0x9c465f280cf43733, ; 878: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 359
	i64 u0x9c69fdfa9a154b28, ; 879: tr/Microsoft.CodeAnalysis.CSharp.resources.dll => 387
	i64 u0x9c8f6872beab6408, ; 880: System.Xml.XPath.XDocument.dll => 163
	i64 u0x9ce01cf91101ae23, ; 881: System.Xml.XmlDocument => 165
	i64 u0x9d128180c81d7ce6, ; 882: Xamarin.AndroidX.CustomView.PoolingContainer => 299
	i64 u0x9d5dbcf5a48583fe, ; 883: lib_Xamarin.AndroidX.Activity.dll.so => 276
	i64 u0x9d74dee1a7725f34, ; 884: Microsoft.Extensions.Configuration.Abstractions.dll => 221
	i64 u0x9dcb570d9792d506, ; 885: lib-ru-Microsoft.CodeAnalysis.resources.dll.so => 373
	i64 u0x9dd0e195825d65c6, ; 886: lib_Xamarin.AndroidX.Navigation.Runtime.Android.dll.so => 328
	i64 u0x9e08a7bea535865a, ; 887: lib_Microsoft.Build.Framework.dll.so => 205
	i64 u0x9e4534b6adaf6e84, ; 888: nl/Microsoft.Maui.Controls.resources => 448
	i64 u0x9e4b95dec42769f7, ; 889: System.Diagnostics.Debug.dll => 26
	i64 u0x9e5a208afd9d15a6, ; 890: it/Microsoft.CodeAnalysis.CSharp.resources => 381
	i64 u0x9eaf1efdf6f7267e, ; 891: Xamarin.AndroidX.Navigation.Common.dll => 324
	i64 u0x9ef542cf1f78c506, ; 892: Xamarin.AndroidX.Lifecycle.LiveData.Core => 311
	i64 u0x9f308fed54f8a5e4, ; 893: tr/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 400
	i64 u0x9fbb2961ca18e5c2, ; 894: Microsoft.Extensions.FileProviders.Physical.dll => 233
	i64 u0x9ff78e804996ce83, ; 895: lib-ja-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 395
	i64 u0xa00832eb975f56a8, ; 896: lib_System.Net.dll.so => 84
	i64 u0xa0ad78236b7b267f, ; 897: Xamarin.AndroidX.Window => 348
	i64 u0xa0d8259f4cc284ec, ; 898: lib_System.Security.Cryptography.dll.so => 129
	i64 u0xa0e17ca50c77a225, ; 899: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 353
	i64 u0xa0ff9b3e34d92f11, ; 900: lib_System.Resources.Writer.dll.so => 103
	i64 u0xa12fbfb4da97d9f3, ; 901: System.Threading.Timer.dll => 151
	i64 u0xa1440773ee9d341e, ; 902: Xamarin.Google.Android.Material => 351
	i64 u0xa18c39c44cdc3465, ; 903: Xamarin.AndroidX.Window.WindowCore => 349
	i64 u0xa1b9d7c27f47219f, ; 904: Xamarin.AndroidX.Navigation.UI.dll => 329
	i64 u0xa2572680829d2c7c, ; 905: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 906: System.Xml.XmlDocument.dll => 165
	i64 u0xa308401900e5bed3, ; 907: lib_mscorlib.dll.so => 170
	i64 u0xa35fe2df24ad9258, ; 908: Microsoft.Build.Framework.dll => 205
	i64 u0xa395572e7da6c99d, ; 909: lib_System.Security.dll.so => 133
	i64 u0xa3b8104115a36bf6, ; 910: lib_Microsoft.Extensions.FileProviders.Embedded.dll.so => 232
	i64 u0xa3c64c49e90a9987, ; 911: System.Security.Cryptography.Pkcs => 270
	i64 u0xa3d089b150e18d27, ; 912: pt-BR/Microsoft.CodeAnalysis.resources.dll => 372
	i64 u0xa3e683f24b43af6f, ; 913: System.Dynamic.Runtime.dll => 37
	i64 u0xa4145becdee3dc4f, ; 914: Xamarin.AndroidX.VectorDrawable.Animated => 344
	i64 u0xa46aa1eaa214539b, ; 915: ko/Microsoft.Maui.Controls.resources => 445
	i64 u0xa4a372eecb9e4df0, ; 916: Microsoft.Extensions.Diagnostics => 228
	i64 u0xa4e62983cf1e3674, ; 917: Microsoft.AspNetCore.Components.Forms.dll => 186
	i64 u0xa4edc8f2ceae241a, ; 918: System.Data.Common.dll => 22
	i64 u0xa5494f40f128ce6a, ; 919: System.Runtime.Serialization.Formatters.dll => 114
	i64 u0xa54b74df83dce92b, ; 920: System.Reflection.DispatchProxy => 92
	i64 u0xa5b7152421ed6d98, ; 921: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 922: lib_System.Linq.Parallel.dll.so => 61
	i64 u0xa5ce5c755bde8cb8, ; 923: lib_System.Security.Cryptography.Csp.dll.so => 124
	i64 u0xa5e599d1e0524750, ; 924: System.Numerics.Vectors.dll => 85
	i64 u0xa5f1ba49b85dd355, ; 925: System.Security.Cryptography.dll => 129
	i64 u0xa60afb2f95c70d8d, ; 926: tr/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 426
	i64 u0xa61975a5a37873ea, ; 927: lib_System.Xml.XmlSerializer.dll.so => 166
	i64 u0xa6593e21584384d2, ; 928: lib_Jsr305Binding.dll.so => 352
	i64 u0xa66cbee0130865f7, ; 929: lib_WindowsBase.dll.so => 169
	i64 u0xa67dbee13e1df9ca, ; 930: Xamarin.AndroidX.SavedState.dll => 333
	i64 u0xa684b098dd27b296, ; 931: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 336
	i64 u0xa68a420042bb9b1f, ; 932: Xamarin.AndroidX.DrawerLayout.dll => 300
	i64 u0xa6d26156d1cacc7c, ; 933: Xamarin.Android.Glide.dll => 272
	i64 u0xa75386b5cb9595aa, ; 934: Xamarin.AndroidX.Lifecycle.Runtime.Android => 315
	i64 u0xa75cf331ee476318, ; 935: lib_Microsoft.AspNetCore.Http.Abstractions.dll.so => 198
	i64 u0xa763fbb98df8d9fb, ; 936: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa78ce3745383236a, ; 937: Xamarin.AndroidX.Lifecycle.Common.Jvm => 309
	i64 u0xa7c31b56b4dc7b33, ; 938: hu/Microsoft.Maui.Controls.resources => 441
	i64 u0xa7eab29ed44b4e7a, ; 939: Mono.Android.Export => 173
	i64 u0xa8195217cbf017b7, ; 940: Microsoft.VisualBasic.Core => 2
	i64 u0xa82fd211eef00a5b, ; 941: Microsoft.Extensions.FileProviders.Physical => 233
	i64 u0xa859a95830f367ff, ; 942: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 320
	i64 u0xa8adea9b1f260c23, ; 943: lib-it-Microsoft.CodeAnalysis.resources.dll.so => 368
	i64 u0xa8b52f21e0dbe690, ; 944: System.Runtime.Serialization.dll => 118
	i64 u0xa8c84ce526c2b4bd, ; 945: Microsoft.VisualStudio.DesignTools.XamlTapContract.dll => 472
	i64 u0xa8ee4ed7de2efaee, ; 946: Xamarin.AndroidX.Annotation.dll => 278
	i64 u0xa95590e7c57438a4, ; 947: System.Configuration => 19
	i64 u0xaa2219c8e3449ff5, ; 948: Microsoft.Extensions.Logging.Abstractions => 241
	i64 u0xaa443ac34067eeef, ; 949: System.Private.Xml.dll => 91
	i64 u0xaa52de307ef5d1dd, ; 950: System.Net.Http => 66
	i64 u0xaa6579a240a3dc11, ; 951: zh-Hant/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 402
	i64 u0xaa9a7b0214a5cc5c, ; 952: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaf86367285a918, ; 953: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 226
	i64 u0xaae72bd80754669a, ; 954: lib-es-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 379
	i64 u0xaaf84bb3f052a265, ; 955: el/Microsoft.Maui.Controls.resources => 434
	i64 u0xab96f4979e4d3631, ; 956: Microsoft.CodeAnalysis.Workspaces.dll => 209
	i64 u0xab9af77b5b67a0b8, ; 957: Xamarin.AndroidX.ConstraintLayout.Core => 292
	i64 u0xab9c1b2687d86b0b, ; 958: lib_System.Linq.Expressions.dll.so => 60
	i64 u0xac2af3fa195a15ce, ; 959: System.Runtime.Numerics => 113
	i64 u0xac5376a2a538dc10, ; 960: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 311
	i64 u0xac5acae88f60357e, ; 961: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 962: System.Security.Principal.Windows.dll => 130
	i64 u0xac98d31068e24591, ; 963: System.Xml.XDocument => 162
	i64 u0xacd46e002c3ccb97, ; 964: ro/Microsoft.Maui.Controls.resources => 452
	i64 u0xacd4f3866b293bb7, ; 965: Microsoft.AspNetCore.Authentication.Cookies => 182
	i64 u0xacdd9e4180d56dda, ; 966: Xamarin.AndroidX.Concurrent.Futures => 290
	i64 u0xacf42eea7ef9cd12, ; 967: System.Threading.Channels => 143
	i64 u0xad89c07347f1bad6, ; 968: nl/Microsoft.Maui.Controls.resources.dll => 448
	i64 u0xadbb53caf78a79d2, ; 969: System.Web.HttpUtility => 156
	i64 u0xadc90ab061a9e6e4, ; 970: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadca1b9030b9317e, ; 971: Xamarin.AndroidX.Collection.Ktx => 289
	i64 u0xadd8eda2edf396ad, ; 972: Xamarin.Android.Glide.GifDecoder => 275
	i64 u0xadf4cf30debbeb9a, ; 973: System.Net.ServicePoint.dll => 77
	i64 u0xadf511667bef3595, ; 974: System.Net.Security => 75
	i64 u0xae0aaa94fdcfce0f, ; 975: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 976: Java.Interop => 172
	i64 u0xae53579c90db1107, ; 977: System.ObjectModel.dll => 87
	i64 u0xae6c596a7d47976f, ; 978: Abc.Domain => 465
	i64 u0xaeafff290ccb288d, ; 979: cs/Microsoft.CodeAnalysis.CSharp.resources => 377
	i64 u0xaf12fb8133ac3fbb, ; 980: Microsoft.EntityFrameworkCore.Sqlite => 217
	i64 u0xaf732d0b2193b8f5, ; 981: System.Security.Cryptography.OpenSsl.dll => 126
	i64 u0xafdb94dbccd9d11c, ; 982: Xamarin.AndroidX.Lifecycle.LiveData.dll => 310
	i64 u0xafe29f45095518e7, ; 983: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 321
	i64 u0xb03ae931fb25607e, ; 984: Xamarin.AndroidX.ConstraintLayout => 291
	i64 u0xb05cc42cd94c6d9d, ; 985: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 455
	i64 u0xb0ac21bec8f428c5, ; 986: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 317
	i64 u0xb0bb43dc52ea59f9, ; 987: System.Diagnostics.Tracing.dll => 34
	i64 u0xb0c6678edfb08a6d, ; 988: lib-es-Microsoft.CodeAnalysis.resources.dll.so => 366
	i64 u0xb110d64b6c9fbe46, ; 989: lib_Microsoft.Extensions.Identity.Core.dll.so => 236
	i64 u0xb1447a4e0cf42ad1, ; 990: lib_Abc.Data.dll.so => 464
	i64 u0xb1ccbf6243328d1c, ; 991: Microsoft.AspNetCore.Components => 185
	i64 u0xb1dd05401aa8ee63, ; 992: System.Security.AccessControl => 120
	i64 u0xb220631954820169, ; 993: System.Text.RegularExpressions => 141
	i64 u0xb2376e1dbf8b4ed7, ; 994: System.Security.Cryptography.Csp => 124
	i64 u0xb244fa9119b764e0, ; 995: ko/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 422
	i64 u0xb2a1959fe95c5402, ; 996: lib_System.Runtime.InteropServices.JavaScript.dll.so => 108
	i64 u0xb2a3f67f3bf29fce, ; 997: da/Microsoft.Maui.Controls.resources => 432
	i64 u0xb2aeb4459ab4812d, ; 998: es/Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 392
	i64 u0xb3011a0a57f7ffb2, ; 999: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 470
	i64 u0xb3874072ee0ecf8c, ; 1000: Xamarin.AndroidX.VectorDrawable.Animated.dll => 344
	i64 u0xb3d5b1cf730ea936, ; 1001: pt-BR/Microsoft.CodeAnalysis.resources => 372
	i64 u0xb3f0a0fcda8d3ebc, ; 1002: Xamarin.AndroidX.CardView => 286
	i64 u0xb440dc2982bd1f9e, ; 1003: lib_Microsoft.CodeAnalysis.CSharp.Workspaces.dll.so => 208
	i64 u0xb46be1aa6d4fff93, ; 1004: hi/Microsoft.Maui.Controls.resources => 439
	i64 u0xb477491be13109d8, ; 1005: ar/Microsoft.Maui.Controls.resources => 429
	i64 u0xb4b3092fd37a579a, ; 1006: ja/Microsoft.CodeAnalysis.CSharp.resources.dll => 382
	i64 u0xb4bd7015ecee9d86, ; 1007: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 1008: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4ff710863453fda, ; 1009: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb52aa297a3a175b1, ; 1010: lib_Microsoft.AspNetCore.Authentication.Core.dll.so => 183
	i64 u0xb54092076b15e062, ; 1011: System.Threading.AccessControl => 142
	i64 u0xb545f78b0415b9b9, ; 1012: Microsoft.AspNetCore.WebUtilities.dll => 204
	i64 u0xb5c38bf497a4cfe2, ; 1013: lib_System.Threading.Tasks.dll.so => 148
	i64 u0xb5c7fcdafbc67ee4, ; 1014: Microsoft.Extensions.Logging.Abstractions.dll => 241
	i64 u0xb5dc0290c441c648, ; 1015: lib_Microsoft.AspNetCore.Authentication.Cookies.dll.so => 182
	i64 u0xb5ea31d5244c6626, ; 1016: System.Threading.ThreadPool.dll => 150
	i64 u0xb6daa312e893d3c4, ; 1017: lib-ja-Microsoft.CodeAnalysis.resources.dll.so => 369
	i64 u0xb7212c4683a94afe, ; 1018: System.Drawing.Primitives => 35
	i64 u0xb7b7753d1f319409, ; 1019: sv/Microsoft.Maui.Controls.resources => 455
	i64 u0xb7e73ccf867721d2, ; 1020: Mono.TextTemplating => 257
	i64 u0xb81a2c6e0aee50fe, ; 1021: lib_System.Private.CoreLib.dll.so => 177
	i64 u0xb8c60af47c08d4da, ; 1022: System.Net.ServicePoint => 77
	i64 u0xb8e68d20aad91196, ; 1023: lib_System.Xml.XPath.dll.so => 164
	i64 u0xb9185c33a1643eed, ; 1024: Microsoft.CSharp.dll => 1
	i64 u0xb95c522c772254d2, ; 1025: Microsoft.AspNetCore.DataProtection.dll => 193
	i64 u0xb960d6b2200ba320, ; 1026: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android.dll => 322
	i64 u0xb9b8001adf4ed7cc, ; 1027: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 337
	i64 u0xb9f64d3b230def68, ; 1028: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 451
	i64 u0xb9fc3c8a556e3691, ; 1029: ja/Microsoft.Maui.Controls.resources => 444
	i64 u0xba4670aa94a2b3c6, ; 1030: lib_System.Xml.XDocument.dll.so => 162
	i64 u0xba48785529705af9, ; 1031: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 1032: lib_System.Windows.dll.so => 158
	i64 u0xbaf762c4825c14e9, ; 1033: Microsoft.AspNetCore.Components.WebView => 189
	i64 u0xbb286883bc35db36, ; 1034: System.Transactions.dll => 154
	i64 u0xbb639e0337b3d979, ; 1035: Microsoft.AspNetCore.Http.dll => 197
	i64 u0xbb65706fde942ce3, ; 1036: System.Net.Sockets => 78
	i64 u0xbb822a624c99bd72, ; 1037: lib-zh-Hans-Microsoft.CodeAnalysis.resources.dll.so => 375
	i64 u0xbba28979413cad9e, ; 1038: lib_System.Runtime.CompilerServices.VisualC.dll.so => 105
	i64 u0xbbd180354b67271a, ; 1039: System.Runtime.Serialization.Formatters => 114
	i64 u0xbc0ad520c3be6d31, ; 1040: ja/Microsoft.CodeAnalysis.resources => 369
	i64 u0xbc22a245dab70cb4, ; 1041: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 263
	i64 u0xbc260cdba33291a3, ; 1042: Xamarin.AndroidX.Arch.Core.Common.dll => 283
	i64 u0xbc3c4e8dffea9d4e, ; 1043: Microsoft.AspNetCore.Metadata.dll => 203
	i64 u0xbcd36316d29f27b4, ; 1044: lib_Microsoft.AspNetCore.Authorization.dll.so => 184
	i64 u0xbd0e2c0d55246576, ; 1045: System.Net.Http.dll => 66
	i64 u0xbd3fbd85b9e1cb29, ; 1046: lib_System.Net.HttpListener.dll.so => 67
	i64 u0xbd437a2cdb333d0d, ; 1047: Xamarin.AndroidX.ViewPager2 => 347
	i64 u0xbd4f572d2bd0a789, ; 1048: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd5d0b88d3d647a5, ; 1049: lib_Xamarin.AndroidX.Browser.dll.so => 285
	i64 u0xbd877b14d0b56392, ; 1050: System.Runtime.Intrinsics.dll => 111
	i64 u0xbde4cd9bb9008cb3, ; 1051: lib_Microsoft.AspNetCore.Authentication.Abstractions.dll.so => 181
	i64 u0xbe65a49036345cf4, ; 1052: lib_System.Buffers.dll.so => 7
	i64 u0xbee38d4a88835966, ; 1053: Xamarin.AndroidX.AppCompat.AppCompatResources => 282
	i64 u0xbef9919db45b4ca7, ; 1054: System.IO.Pipes.AccessControl => 55
	i64 u0xbefded20264dcc84, ; 1055: lib_Humanizer.dll.so => 179
	i64 u0xbf0fa68611139208, ; 1056: lib_Xamarin.AndroidX.Annotation.dll.so => 278
	i64 u0xbf677a56a0f14616, ; 1057: Microsoft.AspNetCore.Authentication => 180
	i64 u0xbfc1e1fb3095f2b3, ; 1058: lib_System.Net.Http.Json.dll.so => 65
	i64 u0xbfd57e7eba42c6c7, ; 1059: de/Microsoft.CodeAnalysis.CSharp.resources.dll => 378
	i64 u0xc040a4ab55817f58, ; 1060: ar/Microsoft.Maui.Controls.resources.dll => 429
	i64 u0xc07cadab29efeba0, ; 1061: Xamarin.AndroidX.Core.Core.Ktx.dll => 295
	i64 u0xc0b1800a2e6bb02c, ; 1062: System.Composition.AttributedModel.dll => 265
	i64 u0xc0ca6b075aeebeec, ; 1063: Mono.TextTemplating.dll => 257
	i64 u0xc0d928351ab5ca77, ; 1064: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 1065: System.Runtime.Intrinsics => 111
	i64 u0xc111030af54d7191, ; 1066: System.Resources.Writer => 103
	i64 u0xc12b8b3afa48329c, ; 1067: lib_System.Linq.dll.so => 63
	i64 u0xc183ca0b74453aa9, ; 1068: lib_System.Threading.Tasks.Dataflow.dll.so => 145
	i64 u0xc1ad2ad098a1cf68, ; 1069: zh-Hans/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 427
	i64 u0xc1afcc0a4309f4e3, ; 1070: ko/Microsoft.CodeAnalysis.resources.dll => 370
	i64 u0xc1c2cb7af77b8858, ; 1071: Microsoft.EntityFrameworkCore => 213
	i64 u0xc1ebdc7e6a943450, ; 1072: Microsoft.AspNetCore.Authorization.dll => 184
	i64 u0xc1ff9ae3cdb6e1e6, ; 1073: Xamarin.AndroidX.Activity.dll => 276
	i64 u0xc2654c6e949f22d9, ; 1074: Microsoft.AspNetCore.Identity.EntityFrameworkCore.dll => 202
	i64 u0xc26c064effb1dea9, ; 1075: System.Buffers.dll => 7
	i64 u0xc27e35acb993bc55, ; 1076: Microsoft.AspNetCore.Identity.dll => 201
	i64 u0xc28c50f32f81cc73, ; 1077: ja/Microsoft.Maui.Controls.resources.dll => 444
	i64 u0xc2902f6cf5452577, ; 1078: lib_Mono.Android.Export.dll.so => 173
	i64 u0xc2a3bca55b573141, ; 1079: System.IO.FileSystem.Watcher => 50
	i64 u0xc2bcfec99f69365e, ; 1080: Xamarin.AndroidX.ViewPager2.dll => 347
	i64 u0xc30b52815b58ac2c, ; 1081: lib_System.Runtime.Serialization.Xml.dll.so => 117
	i64 u0xc312870f3556d820, ; 1082: Microsoft.CodeAnalysis.Workspaces.MSBuild => 211
	i64 u0xc3492f8f90f96ce4, ; 1083: lib_Microsoft.Extensions.DependencyModel.dll.so => 227
	i64 u0xc36d7d89c652f455, ; 1084: System.Threading.Overlapped => 144
	i64 u0xc3735151e613932f, ; 1085: es/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 418
	i64 u0xc396b285e59e5493, ; 1086: GoogleGson.dll => 178
	i64 u0xc3c86c1e5e12f03d, ; 1087: WindowsBase => 169
	i64 u0xc3e74964279d65e6, ; 1088: zh-Hans/Microsoft.CodeAnalysis.resources => 375
	i64 u0xc417a7250be7393e, ; 1089: System.Composition.TypedParts.dll => 269
	i64 u0xc421b61fd853169d, ; 1090: lib_System.Net.WebSockets.Client.dll.so => 82
	i64 u0xc463e077917aa21d, ; 1091: System.Runtime.Serialization.Json => 115
	i64 u0xc472ce300460ccb6, ; 1092: Microsoft.EntityFrameworkCore.dll => 213
	i64 u0xc4d3858ed4d08512, ; 1093: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 321
	i64 u0xc4d69851fe06342f, ; 1094: lib_Microsoft.Extensions.Caching.Memory.dll.so => 219
	i64 u0xc50fded0ded1418c, ; 1095: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 1096: lib_System.Net.Requests.dll.so => 74
	i64 u0xc5293b19e4dc230e, ; 1097: Xamarin.AndroidX.Navigation.Fragment => 326
	i64 u0xc5325b2fcb37446f, ; 1098: lib_System.Private.Xml.dll.so => 91
	i64 u0xc5348fd88280ebea, ; 1099: lib-pl-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 397
	i64 u0xc535cb9a21385d9b, ; 1100: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 274
	i64 u0xc5a0f4b95a699af7, ; 1101: lib_System.Private.Uri.dll.so => 89
	i64 u0xc5cdcd5b6277579e, ; 1102: lib_System.Security.Cryptography.Algorithms.dll.so => 122
	i64 u0xc5ebd1ae70875a55, ; 1103: lib-tr-Microsoft.CodeAnalysis.Workspaces.resources.dll.so => 413
	i64 u0xc5ec286825cb0bf4, ; 1104: Xamarin.AndroidX.Tracing.Tracing => 340
	i64 u0xc659b586d4c229e2, ; 1105: Microsoft.Extensions.Configuration.FileExtensions.dll => 223
	i64 u0xc6706bc8aa7fe265, ; 1106: Xamarin.AndroidX.Annotation.Jvm => 280
	i64 u0xc6c5b839055b9d6e, ; 1107: lib_Mono.TextTemplating.dll.so => 257
	i64 u0xc6fbcf4db7ee4235, ; 1108: lib-de-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 391
	i64 u0xc74d70d4aa96cef3, ; 1109: Xamarin.AndroidX.Navigation.Runtime.Android => 328
	i64 u0xc7c01e7d7c93a110, ; 1110: System.Text.Encoding.Extensions.dll => 137
	i64 u0xc7ce851898a4548e, ; 1111: lib_System.Web.HttpUtility.dll.so => 156
	i64 u0xc809d4089d2556b2, ; 1112: System.Runtime.InteropServices.JavaScript.dll => 108
	i64 u0xc858a28d9ee5a6c5, ; 1113: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 1114: System.Reflection.DispatchProxy.dll => 92
	i64 u0xc8c1200f5fd91931, ; 1115: lib-es-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 418
	i64 u0xc99ccc413e3ce0d4, ; 1116: lib_Microsoft.AspNetCore.Identity.EntityFrameworkCore.dll.so => 202
	i64 u0xc9c62c8f354ac568, ; 1117: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xca3110fea81c8916, ; 1118: Microsoft.AspNetCore.Components.Web.dll => 188
	i64 u0xca32340d8d54dcd5, ; 1119: Microsoft.Extensions.Caching.Memory.dll => 219
	i64 u0xca3726ba3ee2583e, ; 1120: lib-cs-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 416
	i64 u0xca3a723e7342c5b6, ; 1121: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 457
	i64 u0xca52d1fc0d79af1f, ; 1122: Microsoft.AspNetCore.Components.QuickGrid.dll => 187
	i64 u0xca5801070d9fccfb, ; 1123: System.Text.Encoding => 138
	i64 u0xcab3493c70141c2d, ; 1124: pl/Microsoft.Maui.Controls.resources => 449
	i64 u0xcacfddc9f7c6de76, ; 1125: ro/Microsoft.Maui.Controls.resources.dll => 452
	i64 u0xcadbc92899a777f0, ; 1126: Xamarin.AndroidX.Startup.StartupRuntime => 338
	i64 u0xcb45618372c47127, ; 1127: Microsoft.EntityFrameworkCore.Relational => 216
	i64 u0xcba1cb79f45292b5, ; 1128: Xamarin.Android.Glide.GifDecoder.dll => 275
	i64 u0xcbb5f80c7293e696, ; 1129: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 1130: lib__Microsoft.Android.Resource.Designer.dll.so => 473
	i64 u0xcc15da1e07bbd994, ; 1131: Xamarin.AndroidX.SlidingPaneLayout => 337
	i64 u0xcc2876b32ef2794c, ; 1132: lib_System.Text.RegularExpressions.dll.so => 141
	i64 u0xcc5c3bb714c4561e, ; 1133: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 361
	i64 u0xcc76886e09b88260, ; 1134: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 363
	i64 u0xcc9fa2923aa1c9ef, ; 1135: System.Diagnostics.Contracts.dll => 25
	i64 u0xccae9bb73e2326bd, ; 1136: lib_System.IO.Hashing.dll.so => 176
	i64 u0xcce367a95a834654, ; 1137: fr/Microsoft.CodeAnalysis.Workspaces.resources.dll => 406
	i64 u0xccf25c4b634ccd3a, ; 1138: zh-Hans/Microsoft.Maui.Controls.resources.dll => 461
	i64 u0xcd10a42808629144, ; 1139: System.Net.Requests => 74
	i64 u0xcd670214673d74c5, ; 1140: lib_Abc.Soft.App.dll.so => 0
	i64 u0xcdca1b920e9f53ba, ; 1141: Xamarin.AndroidX.Interpolator => 307
	i64 u0xcdd0c48b6937b21c, ; 1142: Xamarin.AndroidX.SwipeRefreshLayout => 339
	i64 u0xcde1fa22dc303670, ; 1143: Microsoft.VisualStudio.DesignTools.XamlTapContract => 472
	i64 u0xcf23d8093f3ceadf, ; 1144: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf5ff6b6b2c4c382, ; 1145: System.Net.Mail.dll => 68
	i64 u0xcf8fc898f98b0d34, ; 1146: System.Private.Xml.Linq => 90
	i64 u0xd02da9e093d0b008, ; 1147: Microsoft.CodeAnalysis.Workspaces.MSBuild.dll => 211
	i64 u0xd04b5f59ed596e31, ; 1148: System.Reflection.Metadata.dll => 97
	i64 u0xd0502f4c69cb63bb, ; 1149: Microsoft.VisualStudio.SolutionPersistence.dll => 256
	i64 u0xd063299fcfc0c93f, ; 1150: lib_System.Runtime.Serialization.Json.dll.so => 115
	i64 u0xd0de8a113e976700, ; 1151: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 1152: System.Runtime.Extensions => 106
	i64 u0xd118cf03aa687fdf, ; 1153: cs/Microsoft.CodeAnalysis.resources => 364
	i64 u0xd1194e1d8a8de83c, ; 1154: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 309
	i64 u0xd12beacdfc14f696, ; 1155: System.Dynamic.Runtime => 37
	i64 u0xd16fd7fb9bbcd43e, ; 1156: Microsoft.Extensions.Diagnostics.Abstractions => 229
	i64 u0xd198e7ce1b6a8344, ; 1157: System.Net.Quic.dll => 73
	i64 u0xd21c7a270cad6fda, ; 1158: lib_Microsoft.EntityFrameworkCore.Design.dll.so => 215
	i64 u0xd2505d8abeed6983, ; 1159: lib_Microsoft.AspNetCore.Components.Web.dll.so => 188
	i64 u0xd2dd98c9336159bc, ; 1160: pl/Microsoft.CodeAnalysis.Workspaces.resources.dll => 410
	i64 u0xd2f81fbcb13ba53e, ; 1161: pt-BR/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 398
	i64 u0xd3144156a3727ebe, ; 1162: Xamarin.Google.Guava.ListenableFuture => 355
	i64 u0xd333d0af9e423810, ; 1163: System.Runtime.InteropServices => 110
	i64 u0xd33a415cb4278969, ; 1164: System.Security.Cryptography.Encoding.dll => 125
	i64 u0xd3426d966bb704f5, ; 1165: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 282
	i64 u0xd3651b6fc3125825, ; 1166: System.Private.Uri.dll => 89
	i64 u0xd373685349b1fe8b, ; 1167: Microsoft.Extensions.Logging.dll => 240
	i64 u0xd3801faafafb7698, ; 1168: System.Private.DataContractSerialization.dll => 88
	i64 u0xd3e4c8d6a2d5d470, ; 1169: it/Microsoft.Maui.Controls.resources => 443
	i64 u0xd3edcc1f25459a50, ; 1170: System.Reflection.Emit => 95
	i64 u0xd42655883bb8c19f, ; 1171: Microsoft.EntityFrameworkCore.Abstractions.dll => 214
	i64 u0xd4645626dffec99d, ; 1172: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 226
	i64 u0xd46b4a8758d1f3ee, ; 1173: Microsoft.Extensions.FileProviders.Composite.dll => 231
	i64 u0xd4fa0abb79079ea9, ; 1174: System.Security.Principal.dll => 131
	i64 u0xd5507e11a2b2839f, ; 1175: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 321
	i64 u0xd5d04bef8478ea19, ; 1176: Xamarin.AndroidX.Tracing.Tracing.dll => 340
	i64 u0xd60815f26a12e140, ; 1177: Microsoft.Extensions.Logging.Debug.dll => 242
	i64 u0xd65786d27a4ad960, ; 1178: lib_Microsoft.Maui.Controls.HotReload.Forms.dll.so => 469
	i64 u0xd65b511d6c4c27c4, ; 1179: ru/Microsoft.CodeAnalysis.Workspaces.resources.dll => 412
	i64 u0xd6694f8359737e4e, ; 1180: Xamarin.AndroidX.SavedState => 333
	i64 u0xd6949e129339eae5, ; 1181: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 295
	i64 u0xd6d21782156bc35b, ; 1182: Xamarin.AndroidX.SwipeRefreshLayout.dll => 339
	i64 u0xd6de019f6af72435, ; 1183: Xamarin.AndroidX.ConstraintLayout.Core.dll => 292
	i64 u0xd70956d1e6deefb9, ; 1184: Jsr305Binding => 352
	i64 u0xd72329819cbbbc44, ; 1185: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 221
	i64 u0xd72c760af136e863, ; 1186: System.Xml.XmlSerializer.dll => 166
	i64 u0xd753f071e44c2a03, ; 1187: lib_System.Security.SecureString.dll.so => 132
	i64 u0xd795a3cf4e0d12df, ; 1188: lib_Microsoft.CodeAnalysis.ExternalAccess.RazorCompiler.dll.so => 210
	i64 u0xd7b3764ada9d341d, ; 1189: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 241
	i64 u0xd7f0088bc5ad71f2, ; 1190: Xamarin.AndroidX.VersionedParcelable => 345
	i64 u0xd8113d9a7e8ad136, ; 1191: System.CodeDom => 264
	i64 u0xd824ef6ab33f8f7a, ; 1192: Xamarin.AndroidX.Window.WindowCore.dll => 349
	i64 u0xd8eb7c27f86b76ec, ; 1193: System.Composition.AttributedModel => 265
	i64 u0xd8efd52d3099b271, ; 1194: es/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 418
	i64 u0xd8fb25e28ae30a12, ; 1195: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 330
	i64 u0xd94e25da6defd0e8, ; 1196: zh-Hans/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll => 427
	i64 u0xd9d55047b066d4af, ; 1197: lib_System.Composition.TypedParts.dll.so => 269
	i64 u0xda1dfa4c534a9251, ; 1198: Microsoft.Extensions.DependencyInjection => 225
	i64 u0xdad05a11827959a3, ; 1199: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 1200: System.IO.FileSystem.Primitives => 49
	i64 u0xdb5383ab5865c007, ; 1201: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 459
	i64 u0xdb58816721c02a59, ; 1202: lib_System.Reflection.Emit.ILGeneration.dll.so => 93
	i64 u0xdb9f2880a64da6d6, ; 1203: Microsoft.Extensions.Identity.Stores.dll => 237
	i64 u0xdbeda89f832aa805, ; 1204: vi/Microsoft.Maui.Controls.resources.dll => 459
	i64 u0xdbf2a779fbc3ac31, ; 1205: System.Transactions.Local.dll => 153
	i64 u0xdbf9607a441b4505, ; 1206: System.Linq => 63
	i64 u0xdbfc90157a0de9b0, ; 1207: lib_System.Text.Encoding.dll.so => 138
	i64 u0xdc75032002d1a212, ; 1208: lib_System.Transactions.Local.dll.so => 153
	i64 u0xdca8be7403f92d4f, ; 1209: lib_System.Linq.Queryable.dll.so => 62
	i64 u0xdcbf1e32b739302e, ; 1210: de/Microsoft.CodeAnalysis.resources => 365
	i64 u0xdce2c53525640bf3, ; 1211: Microsoft.Extensions.Logging => 240
	i64 u0xdd14049e4243731e, ; 1212: lib-it-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 381
	i64 u0xdd2b722d78ef5f43, ; 1213: System.Runtime.dll => 119
	i64 u0xdd67031857c72f96, ; 1214: lib_System.Text.Encodings.Web.dll.so => 139
	i64 u0xdd70765ad6162057, ; 1215: Xamarin.JSpecify => 357
	i64 u0xdd92e229ad292030, ; 1216: System.Numerics.dll => 86
	i64 u0xdde30e6b77aa6f6c, ; 1217: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 461
	i64 u0xde110ae80fa7c2e2, ; 1218: System.Xml.XDocument.dll => 162
	i64 u0xde4726fcdf63a198, ; 1219: Xamarin.AndroidX.Transition => 342
	i64 u0xde572c2b2fb32f93, ; 1220: lib_System.Threading.Tasks.Extensions.dll.so => 146
	i64 u0xde67179044ae6de5, ; 1221: Abc.Aids => 463
	i64 u0xde8769ebda7d8647, ; 1222: hr/Microsoft.Maui.Controls.resources.dll => 440
	i64 u0xdee075f3477ef6be, ; 1223: Xamarin.AndroidX.ExifInterface.dll => 304
	i64 u0xdf4b773de8fb1540, ; 1224: System.Net.dll => 84
	i64 u0xdf9c7682560a9629, ; 1225: System.Net.ServerSentEvents => 76
	i64 u0xdfa254ebb4346068, ; 1226: System.Net.Ping => 71
	i64 u0xdfa4850418b6c99a, ; 1227: Microsoft.AspNetCore.Hosting.Abstractions => 195
	i64 u0xdfe65f83043045ba, ; 1228: es/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 392
	i64 u0xe0142572c095a480, ; 1229: Xamarin.AndroidX.AppCompat.dll => 281
	i64 u0xe021eaa401792a05, ; 1230: System.Text.Encoding.dll => 138
	i64 u0xe02f89350ec78051, ; 1231: Xamarin.AndroidX.CoordinatorLayout.dll => 293
	i64 u0xe0496b9d65ef5474, ; 1232: Xamarin.Android.Glide.DiskLruCache.dll => 274
	i64 u0xe082cda43904f933, ; 1233: lib-it-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 394
	i64 u0xe0be470debe77c12, ; 1234: Microsoft.AspNetCore.Cryptography.Internal.dll => 191
	i64 u0xe0c9c0e54d9b34ce, ; 1235: it/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 394
	i64 u0xe10b760bb1462e7a, ; 1236: lib_System.Security.Cryptography.Primitives.dll.so => 127
	i64 u0xe1566bbdb759c5af, ; 1237: Microsoft.Maui.Controls.HotReload.Forms.dll => 469
	i64 u0xe192a588d4410686, ; 1238: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 1239: System.Runtime.Loader => 112
	i64 u0xe1a77eb8831f7741, ; 1240: System.Security.SecureString.dll => 132
	i64 u0xe1b52f9f816c70ef, ; 1241: System.Private.Xml.Linq.dll => 90
	i64 u0xe1e199c8ab02e356, ; 1242: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1e852de9692e4b8, ; 1243: es/Microsoft.CodeAnalysis.CSharp.resources => 379
	i64 u0xe1ecfdb7fff86067, ; 1244: System.Net.Security.dll => 75
	i64 u0xe2252a80fe853de4, ; 1245: lib_System.Security.Principal.dll.so => 131
	i64 u0xe22fa4c9c645db62, ; 1246: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe24095a7afddaab3, ; 1247: lib_Microsoft.Extensions.Hosting.Abstractions.dll.so => 235
	i64 u0xe2420585aeceb728, ; 1248: System.Net.Requests.dll => 74
	i64 u0xe26692647e6bcb62, ; 1249: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 316
	i64 u0xe27532f50ce5b0b1, ; 1250: Microsoft.Extensions.Localization.dll => 238
	i64 u0xe29b73bc11392966, ; 1251: lib-id-Microsoft.Maui.Controls.resources.dll.so => 442
	i64 u0xe2ad448dee50fbdf, ; 1252: System.Xml.Serialization => 161
	i64 u0xe2d920f978f5d85c, ; 1253: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 1254: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe31089e70e4e84ee, ; 1255: Microsoft.AspNetCore.Components.WebView.Maui => 190
	i64 u0xe332bacb3eb4a806, ; 1256: Mono.Android.Export.dll => 173
	i64 u0xe3811d68d4fe8463, ; 1257: pt-BR/Microsoft.Maui.Controls.resources.dll => 450
	i64 u0xe3b7cbae5ad66c75, ; 1258: lib_System.Security.Cryptography.Encoding.dll.so => 125
	i64 u0xe4292b48f3224d5b, ; 1259: lib_Xamarin.AndroidX.Core.ViewTree.dll.so => 296
	i64 u0xe444e79b0a785818, ; 1260: fr/Microsoft.CodeAnalysis.Workspaces.resources => 406
	i64 u0xe494f7ced4ecd10a, ; 1261: hu/Microsoft.Maui.Controls.resources.dll => 441
	i64 u0xe4a9b1e40d1e8917, ; 1262: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 436
	i64 u0xe4ced86af5b5007d, ; 1263: it/Microsoft.CodeAnalysis.Workspaces.resources.dll => 407
	i64 u0xe4f74a0b5bf9703f, ; 1264: System.Runtime.Serialization.Primitives => 116
	i64 u0xe51aadb833ed7eb1, ; 1265: lib_Microsoft.CodeAnalysis.CSharp.dll.so => 207
	i64 u0xe529964b351f8a52, ; 1266: pt-BR/Microsoft.CodeAnalysis.CSharp.resources.dll => 385
	i64 u0xe5434e8a119ceb69, ; 1267: lib_Mono.Android.dll.so => 175
	i64 u0xe55703b9ce5c038a, ; 1268: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 1269: Microsoft.VisualBasic => 3
	i64 u0xe62913cc36bc07ec, ; 1270: System.Xml.dll => 167
	i64 u0xe66e263beb16318f, ; 1271: Microsoft.Extensions.WebEncoders => 248
	i64 u0xe7b916eaefda3b00, ; 1272: fr/Microsoft.CodeAnalysis.resources.dll => 367
	i64 u0xe7bea09c4900a191, ; 1273: Xamarin.AndroidX.VectorDrawable.dll => 343
	i64 u0xe7dd1e7ea292e8bc, ; 1274: ko/Microsoft.CodeAnalysis.resources => 370
	i64 u0xe7e03cc18dcdeb49, ; 1275: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 1276: lib_System.Configuration.dll.so => 19
	i64 u0xe8397cf3948e7cb7, ; 1277: lib_Microsoft.Extensions.Options.ConfigurationExtensions.dll.so => 245
	i64 u0xe86b0df4ba9e5db8, ; 1278: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 315
	i64 u0xe896622fe0902957, ; 1279: System.Reflection.Emit.dll => 95
	i64 u0xe89a2a9ef110899b, ; 1280: System.Drawing.dll => 36
	i64 u0xe8c35a466559994c, ; 1281: lib_Microsoft.Extensions.Identity.Stores.dll.so => 237
	i64 u0xe8c5f8c100b5934b, ; 1282: Microsoft.Win32.Registry => 5
	i64 u0xe901486a5c561f62, ; 1283: lib_System.Composition.Runtime.dll.so => 268
	i64 u0xe912b82a211c3a0c, ; 1284: System.Composition.Convention => 266
	i64 u0xe94863384115b18a, ; 1285: ru/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 425
	i64 u0xe9772100456fb4b4, ; 1286: Microsoft.AspNetCore.Components.dll => 185
	i64 u0xe98163eb702ae5c5, ; 1287: Xamarin.AndroidX.Arch.Core.Runtime => 284
	i64 u0xe994f23ba4c143e5, ; 1288: Xamarin.KotlinX.Coroutines.Android => 359
	i64 u0xe9b9c8c0458fd92a, ; 1289: System.Windows => 158
	i64 u0xe9d166d87a7f2bdb, ; 1290: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 338
	i64 u0xea154e342c6ac70f, ; 1291: Microsoft.Extensions.FileProviders.Embedded.dll => 232
	i64 u0xea5a4efc2ad81d1b, ; 1292: Xamarin.Google.ErrorProne.Annotations => 354
	i64 u0xeb2313fe9d65b785, ; 1293: Xamarin.AndroidX.ConstraintLayout.dll => 291
	i64 u0xec8abb68d340aac6, ; 1294: Microsoft.AspNetCore.Authorization => 184
	i64 u0xeca8221ac42d17b7, ; 1295: zh-Hant/Microsoft.CodeAnalysis.Workspaces.resources => 415
	i64 u0xed19c616b3fcb7eb, ; 1296: Xamarin.AndroidX.VersionedParcelable.dll => 345
	i64 u0xed60c6fa891c051a, ; 1297: lib_Microsoft.VisualStudio.DesignTools.TapContract.dll.so => 471
	i64 u0xedc4817167106c23, ; 1298: System.Net.Sockets.dll => 78
	i64 u0xedc632067fb20ff3, ; 1299: System.Memory.dll => 64
	i64 u0xedc8e4ca71a02a8b, ; 1300: Xamarin.AndroidX.Navigation.Runtime.dll => 327
	i64 u0xededd1ea2a7b3104, ; 1301: de/Microsoft.CodeAnalysis.Workspaces.resources => 404
	i64 u0xee25c2570ce19192, ; 1302: lib_Microsoft.Extensions.Localization.Abstractions.dll.so => 239
	i64 u0xee81f5b3f1c4f83b, ; 1303: System.Threading.ThreadPool => 150
	i64 u0xeeb7ebb80150501b, ; 1304: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 288
	i64 u0xeefc635595ef57f0, ; 1305: System.Security.Cryptography.Cng => 123
	i64 u0xef03b1b5a04e9709, ; 1306: System.Text.Encoding.CodePages.dll => 136
	i64 u0xef5bcbe61622ee5f, ; 1307: Xamarin.AndroidX.Tracing.Tracing.Android.dll => 341
	i64 u0xef602c523fe2e87a, ; 1308: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 355
	i64 u0xef72742e1bcca27a, ; 1309: Microsoft.Maui.Essentials.dll => 253
	i64 u0xefd1e0c4e5c9b371, ; 1310: System.Resources.ResourceManager.dll => 102
	i64 u0xefdee5cb8ceb7530, ; 1311: ko/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 422
	i64 u0xefe8f8d5ed3c72ea, ; 1312: System.Formats.Tar.dll => 39
	i64 u0xefec0b7fdc57ec42, ; 1313: Xamarin.AndroidX.Activity => 276
	i64 u0xeff59cbde4363ec3, ; 1314: System.Threading.AccessControl.dll => 142
	i64 u0xf008bcd238ede2c8, ; 1315: System.CodeDom.dll => 264
	i64 u0xf00c29406ea45e19, ; 1316: es/Microsoft.Maui.Controls.resources.dll => 435
	i64 u0xf017a06a4015fe38, ; 1317: System.Composition.Convention.dll => 266
	i64 u0xf09e47b6ae914f6e, ; 1318: System.Net.NameResolution => 69
	i64 u0xf0ac2b489fed2e35, ; 1319: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 1320: lib_System.Net.ServicePoint.dll.so => 77
	i64 u0xf0c16dff90fbf5d6, ; 1321: Xamarin.AndroidX.Window.WindowCore.Jvm => 350
	i64 u0xf0de2537ee19c6ca, ; 1322: lib_System.Net.WebHeaderCollection.dll.so => 80
	i64 u0xf1138779fa181c68, ; 1323: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 314
	i64 u0xf11b621fc87b983f, ; 1324: Microsoft.Maui.Controls.Xaml.dll => 251
	i64 u0xf1399ce42b3f4b5e, ; 1325: Abc.Data => 464
	i64 u0xf161bf2d1e9eaff4, ; 1326: lib_Microsoft.AspNetCore.DataProtection.dll.so => 193
	i64 u0xf161f4f3c3b7e62c, ; 1327: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 1328: System.ValueTuple => 155
	i64 u0xf1c4b4005493d871, ; 1329: System.Formats.Asn1.dll => 38
	i64 u0xf1c58f8a74f6852b, ; 1330: lib-ru-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 425
	i64 u0xf22514cfad2d598b, ; 1331: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android.dll.so => 322
	i64 u0xf238bd79489d3a96, ; 1332: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 448
	i64 u0xf27ac96c4a2c11ce, ; 1333: lib-fr-Microsoft.CodeAnalysis.resources.dll.so => 367
	i64 u0xf2f5129629f67302, ; 1334: pt-BR/Microsoft.CodeAnalysis.Workspaces.resources.dll => 411
	i64 u0xf2feea356ba760af, ; 1335: Xamarin.AndroidX.Arch.Core.Runtime.dll => 284
	i64 u0xf300e085f8acd238, ; 1336: lib_System.ServiceProcess.dll.so => 135
	i64 u0xf34e52b26e7e059d, ; 1337: System.Runtime.CompilerServices.VisualC.dll => 105
	i64 u0xf37221fda4ef8830, ; 1338: lib_Xamarin.Google.Android.Material.dll.so => 351
	i64 u0xf3a3da005d4159f2, ; 1339: pl/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 397
	i64 u0xf3ad9b8fb3eefd12, ; 1340: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 1341: System => 168
	i64 u0xf408654b2a135055, ; 1342: System.Reflection.Emit.ILGeneration.dll => 93
	i64 u0xf4103170a1de5bd0, ; 1343: System.Linq.Queryable.dll => 62
	i64 u0xf41b241c82f75cde, ; 1344: ru/Microsoft.CodeAnalysis.CSharp.resources.dll => 386
	i64 u0xf41eebf9fb91e2a1, ; 1345: it/Microsoft.CodeAnalysis.resources.dll => 368
	i64 u0xf42ad2f4323b64d3, ; 1346: Microsoft.Net.Http.Headers.dll => 255
	i64 u0xf42d20c23173d77c, ; 1347: lib_System.ServiceModel.Web.dll.so => 134
	i64 u0xf45bb3f8ce038e01, ; 1348: es/Microsoft.CodeAnalysis.Workspaces.resources.dll => 405
	i64 u0xf4c1dd70a5496a17, ; 1349: System.IO.Compression => 46
	i64 u0xf4d8549f44ddc6a4, ; 1350: lib_System.Composition.Convention.dll.so => 266
	i64 u0xf4ecf4b9afc64781, ; 1351: System.ServiceProcess.dll => 135
	i64 u0xf4eeeaa566e9b970, ; 1352: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 299
	i64 u0xf518f63ead11fcd1, ; 1353: System.Threading.Tasks => 148
	i64 u0xf561a18f3cbed500, ; 1354: lib-it-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 420
	i64 u0xf588f7d9fcfd771e, ; 1355: lib-fr-Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll.so => 393
	i64 u0xf5967aac376787d7, ; 1356: Microsoft.CodeAnalysis.dll => 206
	i64 u0xf5fc7602fe27b333, ; 1357: System.Net.WebHeaderCollection => 80
	i64 u0xf6077741019d7428, ; 1358: Xamarin.AndroidX.CoordinatorLayout => 293
	i64 u0xf61dacd80708509f, ; 1359: Microsoft.CodeAnalysis.CSharp.Workspaces => 208
	i64 u0xf630e3c79e236187, ; 1360: Abc.Aids.dll => 463
	i64 u0xf6742cbf457c450b, ; 1361: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 315
	i64 u0xf6de7fa3776f8927, ; 1362: lib_Microsoft.Extensions.Configuration.Json.dll.so => 224
	i64 u0xf6e8de2aebcbb422, ; 1363: lib_Xamarin.AndroidX.Window.WindowCore.Jvm.dll.so => 350
	i64 u0xf6f893f692f8cb43, ; 1364: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 245
	i64 u0xf70c0a7bf8ccf5af, ; 1365: System.Web => 157
	i64 u0xf77b20923f07c667, ; 1366: de/Microsoft.Maui.Controls.resources.dll => 433
	i64 u0xf7be38c7938ad857, ; 1367: Microsoft.AspNetCore.Cryptography.KeyDerivation => 192
	i64 u0xf7e2cac4c45067b3, ; 1368: lib_System.Numerics.Vectors.dll.so => 85
	i64 u0xf7e74930e0e3d214, ; 1369: zh-HK/Microsoft.Maui.Controls.resources.dll => 460
	i64 u0xf7fa0bf77fe677cc, ; 1370: Newtonsoft.Json.dll => 259
	i64 u0xf84773b5c81e3cef, ; 1371: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 458
	i64 u0xf8aac5ea82de1348, ; 1372: System.Linq.Queryable => 62
	i64 u0xf8b77539b362d3ba, ; 1373: lib_System.Reflection.Primitives.dll.so => 98
	i64 u0xf8e045dc345b2ea3, ; 1374: lib_Xamarin.AndroidX.RecyclerView.dll.so => 331
	i64 u0xf915dc29808193a1, ; 1375: System.Web.HttpUtility.dll => 156
	i64 u0xf96c777a2a0686f4, ; 1376: hi/Microsoft.Maui.Controls.resources.dll => 439
	i64 u0xf9be54c8bcf8ff3b, ; 1377: System.Security.AccessControl.dll => 120
	i64 u0xf9eec5bb3a6aedc6, ; 1378: Microsoft.Extensions.Options => 244
	i64 u0xf9f832cfad9554ff, ; 1379: ru/Microsoft.CodeAnalysis.Workspaces.resources => 412
	i64 u0xfa0e82300e67f913, ; 1380: lib_System.AppContext.dll.so => 6
	i64 u0xfa16a911a6d79b7f, ; 1381: lib_MudBlazor.dll.so => 258
	i64 u0xfa2fdb27e8a2c8e8, ; 1382: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 1383: lib_System.Net.Security.dll.so => 75
	i64 u0xfa504dfa0f097d72, ; 1384: Microsoft.Extensions.FileProviders.Abstractions.dll => 230
	i64 u0xfa5ed7226d978949, ; 1385: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 429
	i64 u0xfa645d91e9fc4cba, ; 1386: System.Threading.Thread => 149
	i64 u0xfa72c187a9b70a63, ; 1387: lib_System.Composition.Hosting.dll.so => 267
	i64 u0xfad4d2c770e827f9, ; 1388: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfaee584671def13d, ; 1389: Humanizer => 179
	i64 u0xfb022853d73b7fa5, ; 1390: lib_SQLitePCLRaw.batteries_v2.dll.so => 260
	i64 u0xfb06dd2338e6f7c4, ; 1391: System.Net.Ping.dll => 71
	i64 u0xfb087abe5365e3b7, ; 1392: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 1393: System.Xml.Serialization.dll => 161
	i64 u0xfbad3e4ce4b98145, ; 1394: System.Security.Cryptography.X509Certificates => 128
	i64 u0xfbd71978549ea473, ; 1395: Microsoft.AspNetCore.Http.Features.dll => 200
	i64 u0xfbf0a31c9fc34bc4, ; 1396: lib_System.Net.Http.dll.so => 66
	i64 u0xfc6b7527cc280b3f, ; 1397: lib_System.Runtime.Serialization.Formatters.dll.so => 114
	i64 u0xfc719aec26adf9d9, ; 1398: Xamarin.AndroidX.Navigation.Fragment.dll => 326
	i64 u0xfc82690c2fe2735c, ; 1399: Xamarin.AndroidX.Lifecycle.Process.dll => 313
	i64 u0xfc93fc307d279893, ; 1400: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 1401: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd1653d4c02ed6b0, ; 1402: lib-zh-Hans-Microsoft.CodeAnalysis.Workspaces.MSBuild.resources.dll.so => 427
	i64 u0xfd22f00870e40ae0, ; 1403: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 300
	i64 u0xfd2e866c678cac90, ; 1404: lib_Microsoft.AspNetCore.Components.WebView.Maui.dll.so => 190
	i64 u0xfd49b3c1a76e2748, ; 1405: System.Runtime.InteropServices.RuntimeInformation => 109
	i64 u0xfd536c702f64dc47, ; 1406: System.Text.Encoding.Extensions => 137
	i64 u0xfd583f7657b6a1cb, ; 1407: Xamarin.AndroidX.Fragment => 305
	i64 u0xfd80fc952d5e3acf, ; 1408: Abc.Shared.dll => 468
	i64 u0xfd8dd91a2c26bd5d, ; 1409: Xamarin.AndroidX.Lifecycle.Runtime => 314
	i64 u0xfda36abccf05cf5c, ; 1410: System.Net.WebSockets.Client => 82
	i64 u0xfdc3b8310ee31472, ; 1411: ja/Microsoft.CodeAnalysis.Workspaces.MSBuild.resources => 421
	i64 u0xfddbe9695626a7f5, ; 1412: Xamarin.AndroidX.Lifecycle.Common => 308
	i64 u0xfe9856c3af9365ab, ; 1413: lib_Microsoft.Extensions.Configuration.FileExtensions.dll.so => 223
	i64 u0xfeae9952cf03b8cb, ; 1414: tr/Microsoft.Maui.Controls.resources => 457
	i64 u0xfebe1950717515f9, ; 1415: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 312
	i64 u0xfec8e01187d0178c, ; 1416: lib-ja-Microsoft.CodeAnalysis.CSharp.resources.dll.so => 382
	i64 u0xff1a4e86e72b0140, ; 1417: Microsoft.AspNetCore.Authentication.Abstractions.dll => 181
	i64 u0xff270a55858bac8d, ; 1418: System.Security.Principal => 131
	i64 u0xff9b54613e0d2cc8, ; 1419: System.Net.Http.Json => 65
	i64 u0xffd5b3e75321a00b, ; 1420: Microsoft.AspNetCore.DataProtection.Abstractions => 194
	i64 u0xffdb7a971be4ec73 ; 1421: System.ValueTuple.dll => 155
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1422 x i32] [
	i32 42, i32 360, i32 339, i32 13, i32 209, i32 327, i32 245, i32 270,
	i32 107, i32 219, i32 174, i32 48, i32 281, i32 396, i32 7, i32 263,
	i32 194, i32 466, i32 88, i32 453, i32 431, i32 459, i32 301, i32 72,
	i32 331, i32 212, i32 12, i32 252, i32 104, i32 196, i32 212, i32 460,
	i32 159, i32 19, i32 422, i32 306, i32 288, i32 185, i32 164, i32 303,
	i32 248, i32 343, i32 170, i32 453, i32 419, i32 10, i32 242, i32 395,
	i32 344, i32 98, i32 299, i32 300, i32 13, i32 244, i32 10, i32 415,
	i32 129, i32 194, i32 97, i32 419, i32 218, i32 271, i32 143, i32 39,
	i32 454, i32 363, i32 192, i32 346, i32 264, i32 450, i32 175, i32 275,
	i32 5, i32 253, i32 68, i32 336, i32 256, i32 376, i32 132, i32 236,
	i32 335, i32 302, i32 69, i32 368, i32 393, i32 365, i32 289, i32 67,
	i32 463, i32 195, i32 57, i32 298, i32 206, i32 52, i32 424, i32 206,
	i32 43, i32 243, i32 127, i32 386, i32 68, i32 83, i32 316, i32 471,
	i32 383, i32 161, i32 94, i32 101, i32 331, i32 144, i32 378, i32 154,
	i32 285, i32 376, i32 437, i32 165, i32 172, i32 438, i32 226, i32 383,
	i32 423, i32 83, i32 471, i32 357, i32 289, i32 387, i32 4, i32 5,
	i32 51, i32 103, i32 227, i32 56, i32 122, i32 100, i32 171, i32 120,
	i32 468, i32 360, i32 21, i32 424, i32 390, i32 441, i32 417, i32 139,
	i32 99, i32 363, i32 417, i32 377, i32 79, i32 447, i32 376, i32 428,
	i32 391, i32 338, i32 121, i32 196, i32 369, i32 8, i32 379, i32 168,
	i32 456, i32 71, i32 274, i32 186, i32 317, i32 332, i32 199, i32 371,
	i32 228, i32 233, i32 174, i32 148, i32 40, i32 414, i32 336, i32 47,
	i32 30, i32 329, i32 445, i32 147, i32 244, i32 166, i32 236, i32 28,
	i32 400, i32 86, i32 340, i32 410, i32 79, i32 428, i32 43, i32 0,
	i32 29, i32 0, i32 247, i32 42, i32 105, i32 119, i32 279, i32 45,
	i32 93, i32 456, i32 56, i32 151, i32 470, i32 149, i32 213, i32 102,
	i32 49, i32 20, i32 294, i32 373, i32 116, i32 211, i32 272, i32 437,
	i32 353, i32 260, i32 396, i32 358, i32 246, i32 96, i32 58, i32 374,
	i32 442, i32 440, i32 247, i32 349, i32 83, i32 390, i32 353, i32 172,
	i32 26, i32 72, i32 330, i32 204, i32 229, i32 304, i32 423, i32 325,
	i32 410, i32 469, i32 458, i32 70, i32 33, i32 436, i32 14, i32 141,
	i32 38, i32 462, i32 466, i32 234, i32 467, i32 290, i32 204, i32 449,
	i32 136, i32 94, i32 90, i32 152, i32 350, i32 455, i32 24, i32 395,
	i32 140, i32 57, i32 142, i32 371, i32 51, i32 434, i32 249, i32 29,
	i32 160, i32 34, i32 167, i32 218, i32 305, i32 52, i32 232, i32 473,
	i32 348, i32 92, i32 286, i32 35, i32 364, i32 437, i32 160, i32 234,
	i32 9, i32 435, i32 414, i32 78, i32 59, i32 55, i32 231, i32 252,
	i32 431, i32 384, i32 250, i32 13, i32 347, i32 220, i32 283, i32 111,
	i32 407, i32 380, i32 180, i32 209, i32 320, i32 32, i32 106, i32 86,
	i32 465, i32 94, i32 53, i32 98, i32 180, i32 356, i32 58, i32 191,
	i32 9, i32 104, i32 267, i32 407, i32 398, i32 298, i32 69, i32 346,
	i32 430, i32 259, i32 230, i32 393, i32 417, i32 127, i32 332, i32 118,
	i32 409, i32 137, i32 249, i32 334, i32 128, i32 108, i32 358, i32 133,
	i32 199, i32 285, i32 355, i32 150, i32 210, i32 159, i32 416, i32 306,
	i32 294, i32 260, i32 223, i32 301, i32 332, i32 99, i32 197, i32 24,
	i32 189, i32 337, i32 146, i32 235, i32 398, i32 324, i32 3, i32 366,
	i32 170, i32 282, i32 238, i32 102, i32 164, i32 101, i32 296, i32 182,
	i32 25, i32 201, i32 95, i32 171, i32 175, i32 277, i32 3, i32 449,
	i32 341, i32 303, i32 1, i32 116, i32 358, i32 183, i32 426, i32 214,
	i32 306, i32 313, i32 33, i32 6, i32 227, i32 271, i32 453, i32 159,
	i32 389, i32 451, i32 53, i32 215, i32 405, i32 248, i32 87, i32 255,
	i32 239, i32 345, i32 367, i32 265, i32 329, i32 414, i32 44, i32 312,
	i32 187, i32 106, i32 408, i32 388, i32 378, i32 47, i32 140, i32 322,
	i32 205, i32 65, i32 216, i32 396, i32 323, i32 70, i32 82, i32 60,
	i32 91, i32 157, i32 283, i32 135, i32 112, i32 59, i32 443, i32 323,
	i32 249, i32 401, i32 330, i32 174, i32 237, i32 136, i32 377, i32 143,
	i32 40, i32 430, i32 399, i32 403, i32 262, i32 222, i32 250, i32 61,
	i32 222, i32 319, i32 81, i32 25, i32 36, i32 181, i32 101, i32 316,
	i32 72, i32 423, i32 198, i32 22, i32 294, i32 254, i32 191, i32 383,
	i32 454, i32 123, i32 70, i32 109, i32 460, i32 121, i32 119, i32 308,
	i32 193, i32 325, i32 380, i32 309, i32 11, i32 2, i32 416, i32 126,
	i32 117, i32 145, i32 41, i32 258, i32 89, i32 385, i32 409, i32 278,
	i32 261, i32 177, i32 235, i32 27, i32 151, i32 402, i32 222, i32 444,
	i32 225, i32 255, i32 354, i32 380, i32 277, i32 1, i32 268, i32 196,
	i32 279, i32 44, i32 293, i32 152, i32 18, i32 88, i32 432, i32 41,
	i32 468, i32 409, i32 366, i32 312, i32 287, i32 387, i32 317, i32 96,
	i32 240, i32 28, i32 374, i32 41, i32 401, i32 80, i32 190, i32 302,
	i32 290, i32 147, i32 110, i32 288, i32 11, i32 107, i32 139, i32 16,
	i32 124, i32 67, i32 160, i32 22, i32 262, i32 434, i32 362, i32 104,
	i32 243, i32 408, i32 225, i32 361, i32 64, i32 58, i32 251, i32 433,
	i32 112, i32 465, i32 391, i32 177, i32 402, i32 210, i32 400, i32 328,
	i32 472, i32 359, i32 9, i32 351, i32 122, i32 428, i32 100, i32 107,
	i32 76, i32 420, i32 320, i32 411, i32 373, i32 250, i32 113, i32 280,
	i32 49, i32 59, i32 20, i32 319, i32 297, i32 73, i32 405, i32 292,
	i32 158, i32 39, i32 432, i32 203, i32 35, i32 215, i32 38, i32 438,
	i32 268, i32 262, i32 419, i32 384, i32 110, i32 207, i32 447, i32 21,
	i32 412, i32 356, i32 411, i32 238, i32 426, i32 318, i32 254, i32 15,
	i32 246, i32 81, i32 81, i32 297, i32 246, i32 208, i32 464, i32 326,
	i32 389, i32 335, i32 155, i32 21, i32 252, i32 431, i32 50, i32 51,
	i32 382, i32 247, i32 457, i32 447, i32 96, i32 273, i32 229, i32 406,
	i32 443, i32 16, i32 270, i32 296, i32 125, i32 440, i32 163, i32 45,
	i32 354, i32 178, i32 118, i32 64, i32 217, i32 169, i32 202, i32 228,
	i32 220, i32 14, i32 333, i32 413, i32 113, i32 280, i32 61, i32 224,
	i32 76, i32 123, i32 446, i32 2, i32 456, i32 374, i32 305, i32 318,
	i32 207, i32 357, i32 189, i32 318, i32 6, i32 287, i32 436, i32 301,
	i32 212, i32 17, i32 454, i32 433, i32 79, i32 291, i32 203, i32 325,
	i32 408, i32 133, i32 356, i32 446, i32 186, i32 85, i32 242, i32 413,
	i32 12, i32 34, i32 121, i32 271, i32 362, i32 313, i32 176, i32 303,
	i32 401, i32 87, i32 179, i32 272, i32 420, i32 192, i32 18, i32 200,
	i32 346, i32 256, i32 221, i32 311, i32 73, i32 404, i32 470, i32 97,
	i32 388, i32 263, i32 188, i32 168, i32 307, i32 239, i32 84, i32 462,
	i32 424, i32 243, i32 467, i32 394, i32 281, i32 286, i32 157, i32 36,
	i32 154, i32 458, i32 461, i32 231, i32 147, i32 56, i32 115, i32 216,
	i32 197, i32 287, i32 343, i32 269, i32 342, i32 37, i32 462, i32 220,
	i32 117, i32 234, i32 279, i32 14, i32 273, i32 214, i32 149, i32 198,
	i32 43, i32 253, i32 365, i32 277, i32 100, i32 361, i32 171, i32 16,
	i32 334, i32 201, i32 48, i32 187, i32 109, i32 199, i32 200, i32 99,
	i32 218, i32 392, i32 323, i32 421, i32 27, i32 425, i32 399, i32 130,
	i32 29, i32 438, i32 183, i32 385, i32 230, i32 335, i32 130, i32 44,
	i32 297, i32 217, i32 302, i32 152, i32 8, i32 195, i32 341, i32 259,
	i32 390, i32 324, i32 439, i32 452, i32 261, i32 451, i32 134, i32 450,
	i32 364, i32 388, i32 42, i32 362, i32 261, i32 33, i32 473, i32 46,
	i32 146, i32 319, i32 251, i32 310, i32 384, i32 298, i32 224, i32 140,
	i32 403, i32 63, i32 134, i32 430, i32 48, i32 403, i32 375, i32 163,
	i32 284, i32 466, i32 310, i32 404, i32 273, i32 308, i32 386, i32 446,
	i32 342, i32 46, i32 167, i32 176, i32 307, i32 258, i32 467, i32 435,
	i32 304, i32 415, i32 267, i32 442, i32 254, i32 18, i32 8, i32 389,
	i32 178, i32 295, i32 334, i32 126, i32 60, i32 144, i32 327, i32 370,
	i32 445, i32 314, i32 372, i32 397, i32 352, i32 421, i32 348, i32 153,
	i32 145, i32 381, i32 360, i32 371, i32 399, i32 128, i32 359, i32 387,
	i32 163, i32 165, i32 299, i32 276, i32 221, i32 373, i32 328, i32 205,
	i32 448, i32 26, i32 381, i32 324, i32 311, i32 400, i32 233, i32 395,
	i32 84, i32 348, i32 129, i32 353, i32 103, i32 151, i32 351, i32 349,
	i32 329, i32 54, i32 165, i32 170, i32 205, i32 133, i32 232, i32 270,
	i32 372, i32 37, i32 344, i32 445, i32 228, i32 186, i32 22, i32 114,
	i32 92, i32 50, i32 61, i32 124, i32 85, i32 129, i32 426, i32 166,
	i32 352, i32 169, i32 333, i32 336, i32 300, i32 272, i32 315, i32 198,
	i32 4, i32 309, i32 441, i32 173, i32 2, i32 233, i32 320, i32 368,
	i32 118, i32 472, i32 278, i32 19, i32 241, i32 91, i32 66, i32 402,
	i32 30, i32 226, i32 379, i32 434, i32 209, i32 292, i32 60, i32 113,
	i32 311, i32 32, i32 130, i32 162, i32 452, i32 182, i32 290, i32 143,
	i32 448, i32 156, i32 17, i32 289, i32 275, i32 77, i32 75, i32 15,
	i32 172, i32 87, i32 465, i32 377, i32 217, i32 126, i32 310, i32 321,
	i32 291, i32 455, i32 317, i32 34, i32 366, i32 236, i32 464, i32 185,
	i32 120, i32 141, i32 124, i32 422, i32 108, i32 432, i32 392, i32 470,
	i32 344, i32 372, i32 286, i32 208, i32 439, i32 429, i32 382, i32 54,
	i32 47, i32 28, i32 183, i32 142, i32 204, i32 148, i32 241, i32 182,
	i32 150, i32 369, i32 35, i32 455, i32 257, i32 177, i32 77, i32 164,
	i32 1, i32 193, i32 322, i32 337, i32 451, i32 444, i32 162, i32 12,
	i32 158, i32 189, i32 154, i32 197, i32 78, i32 375, i32 105, i32 114,
	i32 369, i32 263, i32 283, i32 203, i32 184, i32 66, i32 67, i32 347,
	i32 45, i32 285, i32 111, i32 181, i32 7, i32 282, i32 55, i32 179,
	i32 278, i32 180, i32 65, i32 378, i32 429, i32 295, i32 265, i32 257,
	i32 20, i32 111, i32 103, i32 63, i32 145, i32 427, i32 370, i32 213,
	i32 184, i32 276, i32 202, i32 7, i32 201, i32 444, i32 173, i32 50,
	i32 347, i32 117, i32 211, i32 227, i32 144, i32 418, i32 178, i32 169,
	i32 375, i32 269, i32 82, i32 115, i32 213, i32 321, i32 219, i32 17,
	i32 74, i32 326, i32 91, i32 397, i32 274, i32 89, i32 122, i32 413,
	i32 340, i32 223, i32 280, i32 257, i32 391, i32 328, i32 137, i32 156,
	i32 108, i32 11, i32 92, i32 418, i32 202, i32 31, i32 188, i32 219,
	i32 416, i32 457, i32 187, i32 138, i32 449, i32 452, i32 338, i32 216,
	i32 275, i32 40, i32 473, i32 337, i32 141, i32 361, i32 363, i32 25,
	i32 176, i32 406, i32 461, i32 74, i32 0, i32 307, i32 339, i32 472,
	i32 27, i32 68, i32 90, i32 211, i32 97, i32 256, i32 115, i32 31,
	i32 106, i32 364, i32 309, i32 37, i32 229, i32 73, i32 215, i32 188,
	i32 410, i32 398, i32 355, i32 110, i32 125, i32 282, i32 89, i32 240,
	i32 88, i32 443, i32 95, i32 214, i32 226, i32 231, i32 131, i32 321,
	i32 340, i32 242, i32 469, i32 412, i32 333, i32 295, i32 339, i32 292,
	i32 352, i32 221, i32 166, i32 132, i32 210, i32 241, i32 345, i32 264,
	i32 349, i32 265, i32 418, i32 330, i32 427, i32 269, i32 225, i32 10,
	i32 49, i32 459, i32 93, i32 237, i32 459, i32 153, i32 63, i32 138,
	i32 153, i32 62, i32 365, i32 240, i32 381, i32 119, i32 139, i32 357,
	i32 86, i32 461, i32 162, i32 342, i32 146, i32 463, i32 440, i32 304,
	i32 84, i32 76, i32 71, i32 195, i32 392, i32 281, i32 138, i32 293,
	i32 274, i32 394, i32 191, i32 394, i32 127, i32 469, i32 54, i32 112,
	i32 132, i32 90, i32 23, i32 379, i32 75, i32 131, i32 31, i32 235,
	i32 74, i32 316, i32 238, i32 442, i32 161, i32 23, i32 4, i32 190,
	i32 173, i32 450, i32 125, i32 296, i32 406, i32 441, i32 436, i32 407,
	i32 116, i32 207, i32 385, i32 175, i32 32, i32 3, i32 167, i32 248,
	i32 367, i32 343, i32 370, i32 30, i32 19, i32 245, i32 315, i32 95,
	i32 36, i32 237, i32 5, i32 268, i32 266, i32 425, i32 185, i32 284,
	i32 359, i32 158, i32 338, i32 232, i32 354, i32 291, i32 184, i32 415,
	i32 345, i32 471, i32 78, i32 64, i32 327, i32 404, i32 239, i32 150,
	i32 288, i32 123, i32 136, i32 341, i32 355, i32 253, i32 102, i32 422,
	i32 39, i32 276, i32 142, i32 264, i32 435, i32 266, i32 69, i32 26,
	i32 77, i32 350, i32 80, i32 314, i32 251, i32 464, i32 193, i32 24,
	i32 155, i32 38, i32 425, i32 322, i32 448, i32 367, i32 411, i32 284,
	i32 135, i32 105, i32 351, i32 397, i32 57, i32 168, i32 93, i32 62,
	i32 386, i32 368, i32 255, i32 134, i32 405, i32 46, i32 266, i32 135,
	i32 299, i32 148, i32 420, i32 393, i32 206, i32 80, i32 293, i32 208,
	i32 463, i32 315, i32 224, i32 350, i32 245, i32 157, i32 433, i32 192,
	i32 85, i32 460, i32 259, i32 458, i32 62, i32 98, i32 331, i32 156,
	i32 439, i32 120, i32 244, i32 412, i32 6, i32 258, i32 15, i32 75,
	i32 230, i32 429, i32 149, i32 267, i32 52, i32 179, i32 260, i32 71,
	i32 23, i32 161, i32 128, i32 200, i32 66, i32 114, i32 326, i32 313,
	i32 55, i32 53, i32 427, i32 300, i32 190, i32 109, i32 137, i32 305,
	i32 468, i32 314, i32 82, i32 421, i32 308, i32 223, i32 457, i32 312,
	i32 382, i32 181, i32 131, i32 65, i32 194, i32 155
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.mm.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.mm.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/10.0.1xx @ 01024bb616e7b80417a2c6d320885bfdb956f20a"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
