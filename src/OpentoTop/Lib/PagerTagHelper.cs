using System.Text;
using Microsoft.AspNetCore.Razor.TagHelpers;

namespace OpentoTop.TagHelpers
{
	public class PagerTagHelper : TagHelper
	{
		public MyPagerOption PagerOption { get; set; }
		public override void Process(TagHelperContext context, TagHelperOutput output)
		{

			output.TagName = "div";

			if (PagerOption.PageSize <= 0) { PagerOption.PageSize = 15; }
			if (PagerOption.CurrentPage <= 0) { PagerOption.CurrentPage = 1; }
			if (PagerOption.Total <= 0) { return; }

			//总页数
			var totalPage = PagerOption.Total / PagerOption.PageSize + (PagerOption.Total % PagerOption.PageSize > 0 ? 1 : 0);
			if (totalPage <= 0) { return; }
			//当前路由地址
			if (string.IsNullOrEmpty(PagerOption.RouteUrl))
			{

				//PagerOption.RouteUrl = helper.ViewContext.HttpContext.Request.RawUrl;
				if (!string.IsNullOrEmpty(PagerOption.RouteUrl))
				{

					var lastIndex = PagerOption.RouteUrl.LastIndexOf("/");
					PagerOption.RouteUrl = PagerOption.RouteUrl.Substring(0, lastIndex);
				}
			}
			PagerOption.RouteUrl = PagerOption.RouteUrl.TrimEnd('/');

			//构造分页样式
			if (PagerOption.Total > PagerOption.PageSize)
			{
				var sbPage = new StringBuilder(string.Empty);
				switch (PagerOption.StyleNum)
				{
					case 2:
						{
							break;
						}
					default:
						{
							#region 默认样式

							sbPage.Append("<nav>");
							sbPage.Append("  <ul class=\"pagination\">");
							sbPage.AppendFormat("       <li><a href=\"{0}/{1}\" aria-label=\"Previous\"><span aria-hidden=\"true\">&laquo;</span></a></li>",
													PagerOption.RouteUrl,
													PagerOption.CurrentPage - 1 <= 0 ? 1 : PagerOption.CurrentPage - 1);

							for (int i = 1; i <= totalPage; i++)
							{

								sbPage.AppendFormat("       <li {1}><a href=\"{2}/{0}\">{0}</a></li>",
									i,
									i == PagerOption.CurrentPage ? "class=\"active\"" : "",
									PagerOption.RouteUrl);

							}

							sbPage.Append("       <li>");
							sbPage.AppendFormat("         <a href=\"{0}/{1}\" aria-label=\"Next\">",
												PagerOption.RouteUrl,
												PagerOption.CurrentPage + 1 > totalPage ? PagerOption.CurrentPage : PagerOption.CurrentPage + 1);
							sbPage.Append("               <span aria-hidden=\"true\">&raquo;</span>");
							sbPage.Append("         </a>");
							sbPage.Append("       </li>");
							sbPage.Append("   </ul>");
							sbPage.Append("</nav>");
							#endregion
						}
						break;
				}
				output.Content.SetHtmlContent(sbPage.ToString());
			}
			else
			{
				output.Content.SetHtmlContent("");

			}
			//output.TagMode = TagMode.SelfClosing;
			//return base.ProcessAsync(context, output);
		}

	}
	/// <summary>
	/// 分页option属性
	/// </summary>
	public class MyPagerOption
	{
		/// <summary>
		/// 当前页  必传
		/// </summary>
		public int CurrentPage { get; set; }
		/// <summary>
		/// 总条数  必传
		/// </summary>
		public int Total { get; set; }

		/// <summary>
		/// 分页记录数（每页条数 默认每页15条）
		/// </summary>
		public int PageSize { get; set; }

		/// <summary>
		/// 路由地址(格式如：/Controller/Action) 默认自动获取
		/// </summary>
		public string RouteUrl { get; set; }

		/// <summary>
		/// 样式 默认 bootstrap样式 1
		/// </summary>
		public int StyleNum { get; set; }
	}
}