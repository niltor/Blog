using System;
using System.IO;
using System.Linq;
using Microsoft.AspNetCore.Http;

namespace OpentoTop.Lib
{
    public class FormUpload {
		private static string[] AllowedExtensions { get; set; }

		public FormUpload()
		{
			//upload config
			AllowedExtensions = new string[] { ".jpg", ".png", ".gif" };
		}

		private bool VerifyFileExtension(string path)
		{
			return FormUpload.AllowedExtensions.Contains(Path.GetExtension(path));
		}

		private bool VerifyFileSize(IFormFile file)
		{
			Double fileSize = 0;
			using(var reader = file.OpenReadStream())
			{
				//get filesize in kb
				fileSize = (reader.Length / 1024);
			}

			//filesize less than 1MB => true, else => false
			return (fileSize < 1024) ? true : false;
		}


		public string SaveFile(IFormFile file, string webRootPath,string filename)
		{
			if(file == null)
			{
				throw new ArgumentNullException(nameof(file));
			}
			string relativePath=Path.Combine("uploads",String.Format("{0:yyyy-MM-dd}", DateTime.Now));
			string absolutePath = Path.Combine(webRootPath,relativePath);
			if(!Directory.Exists(absolutePath))
			{
				Directory.CreateDirectory(absolutePath);
			}
			string uploadPath = Path.Combine(absolutePath,filename)+file.FileName;
			//check extension
			if(!VerifyFileExtension(uploadPath))
			{
				return "file ext";
			}
			//check file size
			if(!VerifyFileSize(file))
			{
				return "file size!";
			}

			using(var fileStream = new FileStream(uploadPath, FileMode.Create))
			{
				var inputStream = file.OpenReadStream();
				inputStream.CopyTo(fileStream);
			}

			return Path.Combine(relativePath,Path.GetFileName(uploadPath));
		}
	}
}
