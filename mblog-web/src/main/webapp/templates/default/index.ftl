<#include "/default/utils/layout.ftl"/>
<#include "/default/utils/utils.ftl"/>

<@ui_ltr site_name>
<!--推荐展示
<div class="content">
    <div class="recommend">
        <ul>
            <li class="large">
                <a href="#">
                    <img class="thumb" src="/mblog/store/thumbs/2017/1106/06104652ysla.jpg" style="display: inline;"
                         alt="推荐"/>
                    <h4>唯美桌面壁纸</h4>
                </a>
            </li>
            <li>
                <a href="#">
                    <img class="thumb" src="/mblog/store/thumbs/2017/1106/06101245rlvk.png" style="display: inline;"
                         alt="推荐"/>
                    <h4>最美的时光，只因遇见你。</h4>
                </a>
            </li>
            <li>
                <a href="#">
                    <img class="thumb" src="/mblog/store/thumbs/2017/1106/061020067xfl.png" style="display: inline;"
                         alt="推荐"/>
                    <h4>你脸上露出的笑容，就是我最宝贝...</h4>
                </a>
            </li>
            <li>
                <a href="#">
                    <span><img class="thumb" src="/mblog/store/thumbs/2017/1106/061026596d4e.jpg"
                               style="display: inline;" alt="推荐"/></span>
                    <h4>每一个平凡女孩的征途都可以是...</h4>
                </a>
            </li>
            <li>
                <a href="#">
                    <img class="thumb" src="/mblog/store/thumbs/2017/1106/06100701gq20.png" style="display: inline;"
                         alt="推荐"/>
                    <h4>未来岁月，天涯各安。</h4>
                </a>
            </li>
        </ul>
    </div>
</div>
-->
<@contents group=0>
    <div class="shadow-box">
    	<!-- tab -->
    	<div class="filter">
    		<ul class="">
    			<li><a <#if ord == 'newest'> class="active" </#if> href="${base}/?ord=newest">最新的</a></li>
    			<li><a <#if ord == 'hottest'> class="active" </#if> href="${base}/?ord=hottest">热门的</a></li>
    		</ul>
    	</div>
    	<!-- tab end -->
    	<!-- tab panes -->
    	<div class="stream-list p-stream">
			<#list results.content as row>
    			<@showBlog row/>
			</#list>
    
    		<#if  results.content?size == 0>
    		<div class="stream-item">
    			该目录下还没有内容!
    		</div>
			</#if>
    	</div>
    </div>
    <div class="text-center clr">
    	<#assign url = "index?ord=" + ord>
    	<@pager url results 5 />
    </div>
</@contents>

</@ui_ltr>